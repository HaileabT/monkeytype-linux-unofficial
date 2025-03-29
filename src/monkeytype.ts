import { app, BrowserWindow } from "electron";

// Global variable that holds the app window
let win: BrowserWindow | null;

function createWindow() {
  // Creating the browser window
  win = new BrowserWindow({
    width: 960,
    height: 540,
  });

  // Load a redirecting url from
  // login to the feed
  win.loadURL("https://monkeytype.com");

  // win.on("closed", () => {
  //   win = null;
  // });

  // Prevent from spawning new windows
  win?.webContents.on("did-create-window", (window, details) => {
    const newWindow = new BrowserWindow({
      width: 960,
      height: 540,
    });

    newWindow.loadURL(details.url);
    newWindow.on("closed", () => {
      newWindow.destroy();
    });
  });
}

// Executing the createWindow function
// when the app is ready
app.on("ready", createWindow);

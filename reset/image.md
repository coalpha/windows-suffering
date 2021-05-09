# Windows Image Preparation

### requires

- NTLite
- Rufus
- 7-Zip

Somehow, you need to obtain a legal copy of the Windows ISO.
The best and most secure way to do this is probably to get it straight off the
MS Technet builds.

- Get a Windows ISO with `Windows 10 Pro for Workstations` in it.
- Unzip the ISO with 7-Zip
- Open the unzipped files with NTLite. Don't start removing the additions.
There's a checkbox at the end that will do it for you.
- Load the Windows 10 Pro for Workstations
- Go though everything and pick the options you need.
- Make sure you trim editions at the end so that it doesn't take up unnecessary
space.
- Use rufus and put the iso on a usb storage device.

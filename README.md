# trollware

## Tested On
 - WindowsXP, Windows Server 2008 R2

## Features
   - Adds users to the host (Admin and other random users)
   - Will play an audio file in the background (Never Give You Up works nicely!)
   - Adds Icons to the Desktop (Chrome, My Computer, IE) that link to a generate vbs file. The file presents a series of pop-ups to the users.
   - Replaces Utilmon.exe with cmd.exe
   - Replaces Login and Shutdown Sounds (My Little Pony or Never Give You Up work nicely)
   - Randomizes filenames, but could do a better job of hiding them
   - Creates Scheduled Task for Running the trollware
   - Creates Registry Keys to add the trollware to Run when a user logs in 

## Notes
   - You need to provide your own media files for this script (Windows Boot Sound Replacements, etc.)
   - Must be run as an Administrator
   - By default, newer versions of Windows have blocks in place on sensitive system folders like "C:\Windows\Media"
   -- Need to find a way to override this,soboot sounds can be changed

## Bugs
   - On Windows 2008, reg add asks to overwrite 3 keys, should be forced and silent
   - May have to manually run the commands to give the Admin group access to C:\Windows\Media and C:\Windows\System32

## Screenshots

   IE Error: <br />
   ![IE Error](/screenshots/IE_Error.jpg?raw=true "IE Error") <br />
   Something Goofed: <br />
   ![Something Goofed](/screenshots/Something_Goofed.jpg?raw=true "Something Goofed") <br />
   Trojan: <br />
   ![Trojan](/screenshots/Trojan.jpg?raw=true "Trojan") <br />
   Sphos Failed: <br />
   ![Sophos Failed](/screenshots/Sophos_Failed.jpg?raw=true "Sophos Failed") <br />
   Copying SAM: <br />
   ![Copying SAM](/screenshots/Copying_SAM.jpg?raw=true "Copying SAM") <br />
   Secure Tunnel: <br />
   ![Secure Tunnel](/screenshots/Secure_Tunnel.jpg?raw=true "Secure Tunnel") <br />
   Windows Defender: <br />
   ![Windows Defender](/screenshots/Windows_Defender.jpg?raw=true "Windows Defender") <br />
   Self Delete: <br />
   ![Self Delete](/screenshots/Self_Delete.jpg?raw=true "Self_Delete") <br />
   Memory Corruption:<br />
   ![Memory Corruption](/screenshots/Memory_Corruption.jpg?raw=true "Memory Corruption") <br />
   System Reboot:<br />
   ![System Reboot](/screenshots/System_Reboot.jpg?raw=true "System Reboot") <br />
   Desktop Icon:<br />
   ![Desktop Icon](/screenshots/Desktop_Icon.jpg?raw=true "Desktop Icon")

## Liability
   - THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
   - Run this at your own risk. This author is not liable for your actions...Be smart and use common sense.

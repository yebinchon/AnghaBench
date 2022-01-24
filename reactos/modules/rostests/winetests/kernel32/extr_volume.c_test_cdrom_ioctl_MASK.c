#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ DRIVE_CDROM ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 scalar_t__ FUNC2 (char*) ; 
 char FUNC3 () ; 
 int FUNC4 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,char) ; 

__attribute__((used)) static void FUNC7(void)
{
    char drive_letter, drive_path[] = "A:\\", drive_full_path[] = "\\\\.\\A:";
    DWORD bitmask;
    HANDLE handle;

    bitmask = FUNC4();
    if(!bitmask)
    {
        FUNC6("GetLogicalDrives failed : %u\n", FUNC3());
        return;
    }

    for(drive_letter='A'; drive_letter<='Z'; drive_letter++)
    {
        if(!(bitmask & (1 << (drive_letter-'A') )))
            continue;

        drive_path[0] = drive_letter;
        if(FUNC2(drive_path) != DRIVE_CDROM)
        {
            FUNC6("Skipping %c:, not a CDROM drive.\n", drive_letter);
            continue;
        }

        FUNC6("Testing with %c:\n", drive_letter);

        drive_full_path[4] = drive_letter;
        handle = FUNC1(drive_full_path, GENERIC_READ, FILE_SHARE_READ|FILE_SHARE_WRITE, NULL, OPEN_EXISTING, 0, 0);
        if(handle == INVALID_HANDLE_VALUE)
        {
            FUNC6("Failed to open the device : %u\n", FUNC3());
            continue;
        }

        /* Add your tests here */
        FUNC5(handle);

        FUNC0(handle);
    }

}
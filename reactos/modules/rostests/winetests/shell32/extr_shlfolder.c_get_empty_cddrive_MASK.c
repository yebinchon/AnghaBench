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
typedef  char WCHAR ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ DRIVE_CDROM ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int FUNC2 () ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 

__attribute__((used)) static WCHAR *FUNC3(void)
{
    static WCHAR cdrom_drive[] = {'A',':','\\',0};
    DWORD drives = FUNC2();

    cdrom_drive[0] = 'A';
    while (drives)
    {
        if ((drives & 1) &&
            FUNC0(cdrom_drive) == DRIVE_CDROM &&
            FUNC1(cdrom_drive) == INVALID_FILE_ATTRIBUTES)
        {
            return cdrom_drive;
        }

        drives = drives >> 1;
        cdrom_drive[0]++;
    }
    return NULL;
}
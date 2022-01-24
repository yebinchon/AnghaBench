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
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_FLAG_NO_BUFFERING ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2()
{
//    NTSTATUS s;
//    PHANDLE Handle;
//    PIO_STATUS_BLOCK Status;

    HANDLE Device;
    DWORD BytesReturned;

    FUNC1("SB Test\n");

    Device = FUNC0("\\\\.\\SndBlst", GENERIC_READ | GENERIC_WRITE,
                        FILE_SHARE_READ | FILE_SHARE_WRITE,
                        NULL,
                        OPEN_EXISTING,
                        FILE_FLAG_NO_BUFFERING,
                        NULL);

    if (Device == INVALID_HANDLE_VALUE)
    {
        FUNC1("Device is busy or could not be found.\n");
        return -1;
    }

//    DeviceIoControl(
//        Device,
//        IOCTL_FILE_DISK_OPEN_FILE,
//        OpenFileInformation,
//        sizeof(OPEN_FILE_INFORMATION) + OpenFileInformation->FileNameLength - 1,
//        NULL
//        0,
//        &BytesReturned,
//        NULL
//        )


/*    s = IoCreateFile(Handle, GENERIC_READ | GENERIC_WRITE,
                     OBJ_KERNEL_HANDLE,
                     Status,
                     0,
                     FILE_SHARE_READ | FILE_SHARE_WRITE,
                     FILE_OPEN,
                     FILE_NON_DIRECTORY_FILE,
                     NULL,
                     0,
                     CreateFileTypeNone,
                     NULL,
                     0);
*/
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtlinfo ;
typedef  int ULONG ;
struct TYPE_5__ {scalar_t__ DeviceType; int Characteristics; } ;
struct TYPE_4__ {int member_0; int dwMajorVersion; int dwMinorVersion; int /*<<< orphan*/  member_1; } ;
typedef  scalar_t__ SOCKET ;
typedef  TYPE_1__ RTL_OSVERSIONINFOEXW ;
typedef  int /*<<< orphan*/  PRTL_OSVERSIONINFOW ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  IO_STATUS_BLOCK ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  TYPE_2__ FILE_FS_DEVICE_INFORMATION ;
typedef  int /*<<< orphan*/  DeviceInfo ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ FILE_DEVICE_NAMED_PIPE ; 
 scalar_t__ FILE_TYPE_PIPE ; 
 int /*<<< orphan*/  FileFsDeviceInformation ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_SOCKET ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ STATUS_SUCCESS ; 
 scalar_t__ WINVER_WIN8 ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int _O_BINARY ; 
 int _O_RDWR ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int* FUNC5 () ; 
 int FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 

__attribute__((used)) static void FUNC9(void)
{
    DWORD type;
    int handle, err;
    FILE_FS_DEVICE_INFORMATION DeviceInfo;
    IO_STATUS_BLOCK StatusBlock;
    NTSTATUS Status;

    SOCKET fd = FUNC3(AF_INET, SOCK_STREAM, 0, NULL, 0, 0);
    FUNC8 (fd != INVALID_SOCKET, "Invalid socket\n");
    if (fd == INVALID_SOCKET)
        return;

    type = FUNC0((HANDLE)fd);
    FUNC8(type == FILE_TYPE_PIPE, "Expected type FILE_TYPE_PIPE, was: %lu\n", type);

    Status = FUNC1((HANDLE)fd, &StatusBlock, &DeviceInfo, sizeof(DeviceInfo), FileFsDeviceInformation);
    FUNC8(Status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got 0x%lx\n", Status);
    if (Status == STATUS_SUCCESS)
    {
        RTL_OSVERSIONINFOEXW rtlinfo = { sizeof(rtlinfo), 0 };
        ULONG Characteristics;
        DWORD dwWinVersion;
        FUNC8(DeviceInfo.DeviceType == FILE_DEVICE_NAMED_PIPE, "Expected FILE_DEVICE_NAMED_PIPE, got: 0x%lx\n", DeviceInfo.DeviceType);

        FUNC2((PRTL_OSVERSIONINFOW)&rtlinfo);
        dwWinVersion = (rtlinfo.dwMajorVersion << 8) | rtlinfo.dwMinorVersion;
        Characteristics = dwWinVersion >= WINVER_WIN8 ? 0x20000 : 0;
        FUNC8(DeviceInfo.Characteristics == Characteristics, "Expected 0x%lx, got: 0x%lx\n", Characteristics, DeviceInfo.Characteristics);
    }

    handle = FUNC6(fd, _O_BINARY | _O_RDWR);
    err = *FUNC5();

    FUNC8(handle != -1, "Expected a valid handle (%i)\n", err);
    if (handle != -1)
    {
        /* To close a file opened with _open_osfhandle, call _close. The underlying handle is also closed by
           a call to _close, so it is not necessary to call the Win32 function CloseHandle on the original handle. */
        FUNC4(handle);
    }
    else
    {
        FUNC7(fd);
    }
}
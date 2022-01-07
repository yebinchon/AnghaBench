
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int rtlinfo ;
typedef int ULONG ;
struct TYPE_5__ {scalar_t__ DeviceType; int Characteristics; } ;
struct TYPE_4__ {int member_0; int dwMajorVersion; int dwMinorVersion; int member_1; } ;
typedef scalar_t__ SOCKET ;
typedef TYPE_1__ RTL_OSVERSIONINFOEXW ;
typedef int PRTL_OSVERSIONINFOW ;
typedef scalar_t__ NTSTATUS ;
typedef int IO_STATUS_BLOCK ;
typedef int HANDLE ;
typedef TYPE_2__ FILE_FS_DEVICE_INFORMATION ;
typedef int DeviceInfo ;
typedef scalar_t__ DWORD ;


 int AF_INET ;
 scalar_t__ FILE_DEVICE_NAMED_PIPE ;
 scalar_t__ FILE_TYPE_PIPE ;
 int FileFsDeviceInformation ;
 scalar_t__ GetFileType (int ) ;
 scalar_t__ INVALID_SOCKET ;
 scalar_t__ NtQueryVolumeInformationFile (int ,int *,TYPE_2__*,int,int ) ;
 int RtlGetVersion (int ) ;
 int SOCK_STREAM ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ WINVER_WIN8 ;
 scalar_t__ WSASocketA (int ,int ,int ,int *,int ,int ) ;
 int _O_BINARY ;
 int _O_RDWR ;
 int _close (int) ;
 int* _errno () ;
 int _open_osfhandle (scalar_t__,int) ;
 int closesocket (scalar_t__) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void run_open_osfhandle(void)
{
    DWORD type;
    int handle, err;
    FILE_FS_DEVICE_INFORMATION DeviceInfo;
    IO_STATUS_BLOCK StatusBlock;
    NTSTATUS Status;

    SOCKET fd = WSASocketA(AF_INET, SOCK_STREAM, 0, ((void*)0), 0, 0);
    ok (fd != INVALID_SOCKET, "Invalid socket\n");
    if (fd == INVALID_SOCKET)
        return;

    type = GetFileType((HANDLE)fd);
    ok(type == FILE_TYPE_PIPE, "Expected type FILE_TYPE_PIPE, was: %lu\n", type);

    Status = NtQueryVolumeInformationFile((HANDLE)fd, &StatusBlock, &DeviceInfo, sizeof(DeviceInfo), FileFsDeviceInformation);
    ok(Status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got 0x%lx\n", Status);
    if (Status == STATUS_SUCCESS)
    {
        RTL_OSVERSIONINFOEXW rtlinfo = { sizeof(rtlinfo), 0 };
        ULONG Characteristics;
        DWORD dwWinVersion;
        ok(DeviceInfo.DeviceType == FILE_DEVICE_NAMED_PIPE, "Expected FILE_DEVICE_NAMED_PIPE, got: 0x%lx\n", DeviceInfo.DeviceType);

        RtlGetVersion((PRTL_OSVERSIONINFOW)&rtlinfo);
        dwWinVersion = (rtlinfo.dwMajorVersion << 8) | rtlinfo.dwMinorVersion;
        Characteristics = dwWinVersion >= WINVER_WIN8 ? 0x20000 : 0;
        ok(DeviceInfo.Characteristics == Characteristics, "Expected 0x%lx, got: 0x%lx\n", Characteristics, DeviceInfo.Characteristics);
    }

    handle = _open_osfhandle(fd, _O_BINARY | _O_RDWR);
    err = *_errno();

    ok(handle != -1, "Expected a valid handle (%i)\n", err);
    if (handle != -1)
    {


        _close(handle);
    }
    else
    {
        closesocket(fd);
    }
}

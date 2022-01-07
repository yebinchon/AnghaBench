
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int data ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char*,int ,int,int *,int ,int ,int ) ;
 int DeviceIoControl (scalar_t__,int ,int**,int,int**,int,int*,int *) ;
 scalar_t__ ERROR_INVALID_FUNCTION ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS ;
 int OPEN_EXISTING ;
 int ok (int,char*,int) ;
 int win_skip (char*,...) ;

__attribute__((used)) static void test_disk_extents(void)
{
    BOOL ret;
    DWORD size;
    HANDLE handle;
    static DWORD data[16];

    handle = CreateFileA( "\\\\.\\c:", GENERIC_READ, FILE_SHARE_READ|FILE_SHARE_WRITE, ((void*)0), OPEN_EXISTING, 0, 0 );
    if (handle == INVALID_HANDLE_VALUE)
    {
        win_skip("can't open c: drive %u\n", GetLastError());
        return;
    }
    size = 0;
    ret = DeviceIoControl( handle, IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS, &data,
                           sizeof(data), &data, sizeof(data), &size, ((void*)0) );
    if (!ret && GetLastError() == ERROR_INVALID_FUNCTION)
    {
        win_skip("IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS not supported\n");
        CloseHandle( handle );
        return;
    }
    ok(ret, "DeviceIoControl failed %u\n", GetLastError());
    ok(size == 32, "expected 32, got %u\n", size);
    CloseHandle( handle );
}

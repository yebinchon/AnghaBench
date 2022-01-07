
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int info ;
typedef char WCHAR ;
struct TYPE_7__ {int QuadPart; } ;
typedef TYPE_2__ ULARGE_INTEGER ;
typedef int UINT64 ;
struct TYPE_6__ {int QuadPart; } ;
struct TYPE_8__ {TYPE_1__ DiskSize; } ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef TYPE_3__ DISK_GEOMETRY_EX ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (char*,int ,int,int *,int ,int ,int ) ;
 scalar_t__ DeviceIoControl (scalar_t__,int ,int *,int ,TYPE_3__*,int,int *,int *) ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 int GetDiskFreeSpaceExW (char const*,int *,int *,TYPE_2__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int IOCTL_DISK_GET_DRIVE_GEOMETRY_EX ;
 int OPEN_EXISTING ;

__attribute__((used)) static UINT64 get_freespace( const WCHAR *dir, UINT64 *disksize )
{
    WCHAR root[] = {'\\','\\','.','\\','A',':',0};
    ULARGE_INTEGER free;
    DISK_GEOMETRY_EX info;
    HANDLE handle;
    DWORD bytes_returned;

    free.QuadPart = 512 * 1024 * 1024;
    GetDiskFreeSpaceExW( dir, ((void*)0), ((void*)0), &free );

    root[4] = dir[0];
    handle = CreateFileW( root, GENERIC_READ, FILE_SHARE_READ|FILE_SHARE_WRITE, ((void*)0), OPEN_EXISTING, 0, 0 );
    if (handle != INVALID_HANDLE_VALUE)
    {
        if (DeviceIoControl( handle, IOCTL_DISK_GET_DRIVE_GEOMETRY_EX, ((void*)0), 0, &info, sizeof(info), &bytes_returned, ((void*)0) ))
            *disksize = info.DiskSize.QuadPart;
        CloseHandle( handle );
    }
    return free.QuadPart;
}

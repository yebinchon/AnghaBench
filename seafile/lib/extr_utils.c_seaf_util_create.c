
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int mode_t ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CREATE_ALWAYS ;
 scalar_t__ CreateFileW (int *,int ,int,int *,int ,int ,int *) ;
 int FILE_SHARE_DELETE ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int O_RDWR ;
 int O_WRONLY ;
 int _open_osfhandle (intptr_t,int ) ;
 int errno ;
 int g_free (int *) ;
 int open (char const*,int,int ) ;
 int * win32_long_path (char const*) ;
 int windows_error_to_errno (int ) ;

int
seaf_util_create (const char *path, int flags, mode_t mode)
{
    return open (path, flags, mode);

}

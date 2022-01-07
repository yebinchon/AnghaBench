
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int mode_t ;


 int CreateDirectoryW (int *,int *) ;
 int GetLastError () ;
 int errno ;
 int g_free (int *) ;
 int mkdir (char const*,int ) ;
 int * win32_long_path (char const*) ;
 int windows_error_to_errno (int ) ;

int
seaf_util_mkdir (const char *path, mode_t mode)
{
    return mkdir (path, mode);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int GetLastError () ;
 int RemoveDirectoryW (int *) ;
 int errno ;
 int g_free (int *) ;
 int rmdir (char const*) ;
 int * win32_long_path (char const*) ;
 int windows_error_to_errno (int ) ;

int
seaf_util_rmdir (const char *path)
{
    return rmdir (path);

}

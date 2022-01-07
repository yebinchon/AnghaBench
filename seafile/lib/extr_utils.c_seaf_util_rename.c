
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int GetLastError () ;
 int MOVEFILE_REPLACE_EXISTING ;
 int MoveFileExW (int *,int *,int ) ;
 int errno ;
 int g_free (int *) ;
 int rename (char const*,char const*) ;
 int * win32_long_path (char const*) ;
 int windows_error_to_errno (int ) ;

int
seaf_util_rename (const char *oldpath, const char *newpath)
{
    return rename (oldpath, newpath);

}

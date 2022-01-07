
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int gboolean ;
typedef scalar_t__ DWORD ;


 int F_OK ;
 scalar_t__ GetFileAttributesW (int *) ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 scalar_t__ access (char const*,int ) ;
 int g_free (int *) ;
 int * win32_long_path (char const*) ;

gboolean
seaf_util_exists (const char *path)
{
    return (access (path, F_OK) == 0);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct _stat {int dummy; } ;
typedef int char_u ;
typedef int buf ;
typedef int WCHAR ;


 scalar_t__ GetACP () ;
 char NUL ;
 scalar_t__ VER_PLATFORM_WIN32_NT ;
 int _MAX_PATH ;
 int enc_codepage ;
 int * enc_to_utf16 (char*,int *) ;
 scalar_t__ g_PlatformId ;
 int mb_ptr_back (char*,char*) ;
 int stat_symlink_aware (char*,struct stat*) ;
 int strlen (char*) ;
 int vim_free (int *) ;
 int vim_strncpy (int *,int *,int) ;
 int wstat_symlink_aware (int *,struct _stat*) ;

int
vim_stat(const char *name, struct stat *stp)
{






    char buf[_MAX_PATH + 1];

    char *p;

    vim_strncpy((char_u *)buf, (char_u *)name, sizeof(buf) - 1);
    p = buf + strlen(buf);
    if (p > buf)
 mb_ptr_back(buf, p);
    if (p > buf && (*p == '\\' || *p == '/') && p[-1] != ':')
 *p = NUL;
    return stat_symlink_aware(buf, stp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 char NUL ;
 char TOLOWER_ASC (char) ;
 scalar_t__ change_drive (char) ;
 int chdir (char*) ;
 int p_verbose ;
 int smsg (int *,char*) ;
 int verbose_enter () ;
 int verbose_leave () ;

int
mch_chdir(char *path)
{
    if (path[0] == NUL)
 return 0;
    if (p_verbose >= 5)
    {
 verbose_enter();
 smsg((char_u *)"chdir(%s)", path);
 verbose_leave();
    }
    if (path[1] == ':')
    {
 if (change_drive(TOLOWER_ASC(path[0]) - 'a' + 1))
     return -1;
 path += 2;
    }
    if (*path == NUL)
 return 0;
    return chdir(path);
}

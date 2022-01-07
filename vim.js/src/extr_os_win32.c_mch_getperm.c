
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_mode; } ;
typedef char char_u ;


 int mch_stat (char*,struct stat*) ;
 scalar_t__ win32_getattrs (char*) ;

long
mch_getperm(char_u *name)
{
    struct stat st;
    int n;

    if (name[0] == '\\' && name[1] == '\\')

 return (long)win32_getattrs(name);
    n = mch_stat(name, &st);
    return n == 0 ? (long)st.st_mode : -1L;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char NUL ;
 scalar_t__ change_drive (char) ;
 int chdir (char*) ;
 char mytoupper (char) ;

int
mch_chdir(char *path)
{
    if (path[0] == NUL)
 return 0;
    if (path[1] == ':')
    {
 if (change_drive(mytoupper(path[0]) - 'A' + 1))
     return -1;
 path += 2;
    }
    if (*path == NUL)
 return 0;
    return chdir(path);
}

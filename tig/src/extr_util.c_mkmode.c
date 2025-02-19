
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 scalar_t__ S_ISDIR (int) ;
 scalar_t__ S_ISGITLINK (int) ;
 scalar_t__ S_ISLNK (int) ;
 scalar_t__ S_ISREG (int) ;
 int S_IXUSR ;

const char *
mkmode(mode_t mode)
{
 if (S_ISDIR(mode))
  return "drwxr-xr-x";
 else if (S_ISLNK(mode))
  return "lrwxrwxrwx";
 else if (S_ISGITLINK(mode))
  return "m---------";
 else if (S_ISREG(mode) && mode & S_IXUSR)
  return "-rwxr-xr-x";
 else if (S_ISREG(mode))
  return "-rw-r--r--";
 else
  return "----------";
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int mode_t ;
 int O_EXCL ;
 int errno ;
 int open (char const*,int,int ) ;
 int stat (char const*,struct stat*) ;

__attribute__((used)) static int
open_weak_exclusive(const char *pathname, int flags, mode_t mode)
{
 int ret;
 struct stat statbuf;

 ret = open(pathname, flags, mode);
 if (ret != -1 || !(flags & O_EXCL))
 {

  return ret;
 }







 switch (errno)
 {
  case 135:
  case 134:
  case 133:
  case 132:
  case 131:
  case 130:
  case 129:
  case 128:
   return ret;
 }


 if (stat(pathname, &statbuf) != -1)
 {

  errno = 134;
  return -1;
 }
 else
 {
  return open(pathname, flags & ~O_EXCL, mode);
 }
}

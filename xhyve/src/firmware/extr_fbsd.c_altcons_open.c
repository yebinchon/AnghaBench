
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int ENOTSUP ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int S_ISCHR (int ) ;
 int consin_fd ;
 int consout_fd ;
 int errno ;
 int open (char*,int) ;
 int stat (char*,struct stat*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int
altcons_open(char *path)
{
 struct stat sb;
 int err;
 int fd;






 if (!strcmp(path, "stdio"))
  return (0);

 err = stat(path, &sb);
 if (err == 0) {
  if (!S_ISCHR(sb.st_mode))
   err = ENOTSUP;
  else {
   fd = open(path, O_RDWR | O_NONBLOCK);
   if (fd < 0)
    err = errno;
   else
    consin_fd = consout_fd = fd;
  }
 }

 return (err);
}

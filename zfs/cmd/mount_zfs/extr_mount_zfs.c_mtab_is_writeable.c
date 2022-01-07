
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int O_CREAT ;
 int O_RDWR ;
 scalar_t__ S_ISLNK (int ) ;
 int close (int) ;
 int lstat (char*,struct stat*) ;
 int open (char*,int,int) ;

__attribute__((used)) static int
mtab_is_writeable(void)
{
 struct stat st;
 int error, fd;

 error = lstat("/etc/mtab", &st);
 if (error || S_ISLNK(st.st_mode))
  return (0);

 fd = open("/etc/mtab", O_RDWR | O_CREAT, 0644);
 if (fd < 0)
  return (0);

 close(fd);
 return (1);
}

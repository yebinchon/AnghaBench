
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_RDWR ;
 scalar_t__ close (int) ;
 int filename ;
 int fsize ;
 scalar_t__ ftruncate (int,int ) ;
 scalar_t__ ftruncflag ;
 int open (int ,int,int) ;
 int parse_options (int,char**) ;
 int perror (char*) ;
 scalar_t__ truncate (int ,int ) ;

int
main(int argc, char *argv[])
{
 int fd;

 parse_options(argc, argv);

 if (ftruncflag) {
  fd = open(filename, O_RDWR|O_CREAT, 0666);
  if (fd < 0) {
   perror("open");
   return (1);
  }
  if (ftruncate(fd, fsize) < 0) {
   perror("ftruncate");
   return (1);
  }
  if (close(fd)) {
   perror("close");
   return (1);
  }
 } else {
  if (truncate(filename, fsize) < 0) {
   perror("truncate");
   return (1);
  }
 }
 return (0);
}

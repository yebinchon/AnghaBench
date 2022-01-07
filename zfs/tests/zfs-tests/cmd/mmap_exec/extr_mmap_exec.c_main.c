
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;


 scalar_t__ MAP_FAILED ;
 int MAP_SHARED ;
 int O_RDONLY ;
 int PROT_EXEC ;
 int errno ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ mmap (int ,int ,int ,int ,int,int ) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int printf (char*,...) ;

int
main(int argc, char *argv[])
{
 int error, fd;
 struct stat statbuf;

 if (argc != 2) {
  (void) printf("Error: missing binary name.\n");
  (void) printf("Usage:\n\t%s <binary name>\n",
      argv[0]);
  return (1);
 }

 errno = 0;

 if ((fd = open(argv[1], O_RDONLY)) < 0) {
  error = errno;
  perror("open");
  return (error);
 }
 if (fstat(fd, &statbuf) < 0) {
  error = errno;
  perror("fstat");
  return (error);
 }

 if (mmap(0, statbuf.st_size,
     PROT_EXEC, MAP_SHARED, fd, 0) == MAP_FAILED) {
  error = errno;
  perror("mmap");
  return (error);
 }

 return (0);
}

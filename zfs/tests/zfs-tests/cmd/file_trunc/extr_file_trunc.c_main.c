
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int close (int) ;
 int count ;
 int do_trunc (int) ;
 int do_write (int) ;
 int exit (int) ;
 int filename ;
 int open (int ,int,int) ;
 int parse_options (int,char**) ;
 int perror (char*) ;

int
main(int argc, char *argv[])
{
 int i = 0;
 int fd = -1;

 parse_options(argc, argv);

 fd = open(filename, O_RDWR|O_CREAT|O_TRUNC, 0666);
 if (fd < 0) {
  perror("open");
  exit(3);
 }

 for (i = 0; count == 0 || i < count; i++) {
  (void) do_write(fd);
  (void) do_trunc(fd);
 }

 (void) close(fd);
 return (0);
}

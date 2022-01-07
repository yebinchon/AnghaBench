
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_cur; int rlim_max; } ;
typedef int libzfs_handle_t ;


 int O_RDONLY ;
 int RLIMIT_NOFILE ;
 int errno ;
 int exit (int) ;
 int libzfs_fini (int *) ;
 int * libzfs_init () ;
 int open (char*,int ) ;
 int printf (char*,int) ;
 scalar_t__ setrlimit (int ,struct rlimit*) ;

int
main(int argc, char **argv)
{
 int i;
 struct rlimit limit;
 libzfs_handle_t *h;

 limit.rlim_cur = 65535;
 limit.rlim_max = 65535;

 if (setrlimit(RLIMIT_NOFILE, &limit) != 0) {
  (void) printf("many_fds: setrlimit() failed with errno=%d\n",
      errno);
  exit(1);
 }

 for (i = 0; i < 255; ++i) {
  int fd = open("/dev/null", O_RDONLY);
  if (fd == -1) {
   (void) printf("open failed with errno=%d\n", errno);
   return (1);
  }
 }

 h = libzfs_init();

 if (h != ((void*)0)) {
  libzfs_fini(h);
  return (0);
 } else {
  (void) printf("many_fds: libzfs_init() failed with errno=%d\n",
      errno);
  return (1);
 }
}

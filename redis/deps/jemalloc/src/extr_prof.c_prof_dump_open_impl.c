
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int creat (char const*,int) ;
 int malloc_printf (char*,char const*) ;
 scalar_t__ opt_abort ;

__attribute__((used)) static int
prof_dump_open_impl(bool propagate_err, const char *filename) {
 int fd;

 fd = creat(filename, 0644);
 if (fd == -1 && !propagate_err) {
  malloc_printf("<jemalloc>: creat(\"%s\"), 0644) failed\n",
      filename);
  if (opt_abort) {
   abort();
  }
 }

 return fd;
}

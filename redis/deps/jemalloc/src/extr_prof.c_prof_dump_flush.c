
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int abort () ;
 int cassert (int ) ;
 int config_prof ;
 int malloc_write (char*) ;
 int malloc_write_fd (int ,int ,scalar_t__) ;
 scalar_t__ opt_abort ;
 int prof_dump_buf ;
 scalar_t__ prof_dump_buf_end ;
 int prof_dump_fd ;

__attribute__((used)) static bool
prof_dump_flush(bool propagate_err) {
 bool ret = 0;
 ssize_t err;

 cassert(config_prof);

 err = malloc_write_fd(prof_dump_fd, prof_dump_buf, prof_dump_buf_end);
 if (err == -1) {
  if (!propagate_err) {
   malloc_write("<jemalloc>: write() failed during heap "
       "profile flush\n");
   if (opt_abort) {
    abort();
   }
  }
  ret = 1;
 }
 prof_dump_buf_end = 0;

 return ret;
}

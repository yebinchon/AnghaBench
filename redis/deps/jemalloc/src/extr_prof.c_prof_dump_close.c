
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int close (int) ;
 int prof_dump_fd ;
 int prof_dump_flush (int) ;

__attribute__((used)) static bool
prof_dump_close(bool propagate_err) {
 bool ret;

 assert(prof_dump_fd != -1);
 ret = prof_dump_flush(propagate_err);
 close(prof_dump_fd);
 prof_dump_fd = -1;

 return ret;
}

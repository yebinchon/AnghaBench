
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 size_t PROF_DUMP_BUFSIZE ;
 int cassert (int ) ;
 int close (int) ;
 int config_prof ;
 scalar_t__ malloc_read_fd (int,int *,size_t) ;
 int * prof_dump_buf ;
 size_t prof_dump_buf_end ;
 scalar_t__ prof_dump_flush (int) ;
 scalar_t__ prof_dump_write (int,char*) ;
 int prof_getpid () ;
 int prof_open_maps (char*,...) ;

__attribute__((used)) static bool
prof_dump_maps(bool propagate_err) {
 bool ret;
 int mfd;

 cassert(config_prof);





 {
  int pid = prof_getpid();

  mfd = prof_open_maps("/proc/%d/task/%d/maps", pid, pid);
  if (mfd == -1) {
   mfd = prof_open_maps("/proc/%d/maps", pid);
  }
 }

 if (mfd != -1) {
  ssize_t nread;

  if (prof_dump_write(propagate_err, "\nMAPPED_LIBRARIES:\n") &&
      propagate_err) {
   ret = 1;
   goto label_return;
  }
  nread = 0;
  do {
   prof_dump_buf_end += nread;
   if (prof_dump_buf_end == PROF_DUMP_BUFSIZE) {

    if (prof_dump_flush(propagate_err) &&
        propagate_err) {
     ret = 1;
     goto label_return;
    }
   }
   nread = malloc_read_fd(mfd,
       &prof_dump_buf[prof_dump_buf_end], PROF_DUMP_BUFSIZE
       - prof_dump_buf_end);
  } while (nread > 0);
 } else {
  ret = 1;
  goto label_return;
 }

 ret = 0;
label_return:
 if (mfd != -1) {
  close(mfd);
 }
 return ret;
}

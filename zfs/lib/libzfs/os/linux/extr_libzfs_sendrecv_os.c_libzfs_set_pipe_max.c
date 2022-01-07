
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int F_GETPIPE_SZ ;
 int F_SETPIPE_SZ ;
 int fclose (int *) ;
 long fcntl (int,int ,...) ;
 int * fopen (char*,char*) ;
 scalar_t__ fscanf (int *,char*,unsigned long*) ;

void
libzfs_set_pipe_max(int infd)
{
 FILE *procf = fopen("/proc/sys/fs/pipe-max-size", "r");

 if (procf != ((void*)0)) {
  unsigned long max_psize;
  long cur_psize;
  if (fscanf(procf, "%lu", &max_psize) > 0) {
   cur_psize = fcntl(infd, F_GETPIPE_SZ);
   if (cur_psize > 0 &&
       max_psize > (unsigned long) cur_psize)
    fcntl(infd, F_SETPIPE_SZ,
        max_psize);
  }
  fclose(procf);
 }
}

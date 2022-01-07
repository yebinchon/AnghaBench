
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINTR ;
 int assert (int) ;
 scalar_t__ errno ;
 int fprintf (int ,char*,char*) ;
 int read (int,void*,int) ;
 int stderr ;
 char* strerror (scalar_t__) ;

__attribute__((used)) static void
block_readpipe(int pipefd, void *buffer, int sz) {
 for (;;) {
  int n = read(pipefd, buffer, sz);
  if (n<0) {
   if (errno == EINTR)
    continue;
   fprintf(stderr, "socket-server : read pipe error %s.\n",strerror(errno));
   return;
  }

  assert(n == sz);
  return;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int fcntl (int,int ,...) ;

__attribute__((used)) static int nonblock(int fd, int isnonblock) {
  int r;

  r= fcntl(fd,F_GETFL);
  if (r==-1) return -1;
  r= fcntl(fd,F_SETFL, isnonblock ? r|O_NONBLOCK : r&~O_NONBLOCK);
  if (r==-1) return -1;
  return 0;
}

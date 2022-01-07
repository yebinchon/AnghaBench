
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int close (int) ;
 int fcntl (int,int ,...) ;
 int perror (char*) ;
 int pipe (int*) ;

int
pipeutils_create_nonblocking(int pipefds[2])
{
 int r = pipe(pipefds);
 if (r == -1) {
  perror("pipe");
  return -1;
 }

 int flags = fcntl(pipefds[0], F_GETFL);
 if (flags == -1) {
  perror("fcntl");
  close(pipefds[0]);
  close(pipefds[1]);
  return -1;
 }

 r = fcntl(pipefds[0], F_SETFL, flags | O_NONBLOCK);
 if (r == -1) {
  perror("fcntl");
  close(pipefds[0]);
  close(pipefds[1]);
  return -1;
 }

 flags = fcntl(pipefds[1], F_GETFL);
 if (flags == -1) {
  perror("fcntl");
  close(pipefds[0]);
  close(pipefds[1]);
  return -1;
 }

 r = fcntl(pipefds[1], F_SETFL, flags | O_NONBLOCK);
 if (r == -1) {
  perror("fcntl");
  close(pipefds[0]);
  close(pipefds[1]);
  return -1;
 }

 return 0;
}

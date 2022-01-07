
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int close (int) ;
 scalar_t__ dup2 (int,int) ;
 int open (char*,int ) ;
 int perror (char*) ;

__attribute__((used)) static int
redirect_fds() {
 int nfd = open("/dev/null", O_RDWR);
 if (nfd == -1) {
  perror("Unable to open /dev/null: ");
  return -1;
 }
 if (dup2(nfd, 0) < 0) {
  perror("Unable to dup2 stdin(0): ");
  return -1;
 }
 if (dup2(nfd, 1) < 0) {
  perror("Unable to dup2 stdout(1): ");
  return -1;
 }
 if (dup2(nfd, 2) < 0) {
  perror("Unable to dup2 stderr(2): ");
  return -1;
 }

 close(nfd);

 return 0;
}

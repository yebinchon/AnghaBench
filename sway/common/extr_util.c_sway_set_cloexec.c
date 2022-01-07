
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD_CLOEXEC ;
 int F_GETFD ;
 int F_SETFD ;
 int SWAY_ERROR ;
 int fcntl (int,int ,...) ;
 int sway_log_errno (int ,char*) ;

bool sway_set_cloexec(int fd, bool cloexec) {
 int flags = fcntl(fd, F_GETFD);
 if (flags == -1) {
  sway_log_errno(SWAY_ERROR, "fcntl failed");
  return 0;
 }
 if (cloexec) {
  flags = flags | FD_CLOEXEC;
 } else {
  flags = flags & ~FD_CLOEXEC;
 }
 if (fcntl(fd, F_SETFD, flags) == -1) {
  sway_log_errno(SWAY_ERROR, "fcntl failed");
  return 0;
 }
 return 1;
}

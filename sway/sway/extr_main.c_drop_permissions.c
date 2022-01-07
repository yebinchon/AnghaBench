
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SWAY_ERROR ;
 scalar_t__ getegid () ;
 scalar_t__ geteuid () ;
 scalar_t__ getgid () ;
 scalar_t__ getuid () ;
 scalar_t__ setgid (scalar_t__) ;
 int setuid (scalar_t__) ;
 int sway_log (int ,char*) ;

__attribute__((used)) static bool drop_permissions(void) {
 if (getuid() != geteuid() || getgid() != getegid()) {
  if (setuid(getuid()) != 0 || setgid(getgid()) != 0) {
   sway_log(SWAY_ERROR, "Unable to drop root, refusing to start");
   return 0;
  }
 }
 if (setuid(0) != -1) {
  sway_log(SWAY_ERROR, "Unable to drop root (we shouldn't be able to "
   "restore it after setuid), refusing to start");
  return 0;
 }
 return 1;
}

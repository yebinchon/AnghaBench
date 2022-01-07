
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ getegid () ;
 scalar_t__ geteuid () ;
 int getgid () ;
 int getuid () ;
 int setgid (int ) ;
 int setuid (int ) ;

__attribute__((used)) static int drop_privileges(void) {

 if (geteuid() != 0 && getegid() != 0) {
  return 0;
 }
 if (setgid(getgid()) == -1) {
  return -1;
 }
 if (setuid(getuid()) == -1) {
  return -1;
 }
 return 0;
}

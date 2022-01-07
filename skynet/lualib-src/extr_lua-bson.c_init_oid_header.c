
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int pid_t ;
typedef int hostname ;


 scalar_t__ gethostname (char*,int) ;
 int getpid () ;
 int oid_counter ;
 int* oid_header ;
 int time (int *) ;

__attribute__((used)) static void
init_oid_header() {
 if (oid_counter) {

  return;
 }
 pid_t pid = getpid();
 uint32_t h = 0;
 char hostname[256];
 if (gethostname(hostname, sizeof(hostname))==0) {
  int i;
  for (i=0;i<sizeof(hostname) && hostname[i];i++) {
   h = h ^ ((h<<5)+(h>>2)+hostname[i]);
   }
  h ^= i;
 }
 oid_header[0] = h & 0xff;
 oid_header[1] = (h>>8) & 0xff;
 oid_header[2] = (h>>16) & 0xff;
 oid_header[3] = pid & 0xff;
 oid_header[4] = (pid >> 8) & 0xff;

 uint32_t c = h ^ time(((void*)0)) ^ (uintptr_t)&h;
 if (c == 0) {
  c = 1;
 }
 oid_counter = c;
}

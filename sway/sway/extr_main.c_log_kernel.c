
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SWAY_INFO ;
 int log_file (int *) ;
 int pclose (int *) ;
 int * popen (char*,char*) ;
 int sway_log (int ,char*) ;

__attribute__((used)) static void log_kernel(void) {
 FILE *f = popen("uname -a", "r");
 if (!f) {
  sway_log(SWAY_INFO, "Unable to determine kernel version");
  return;
 }
 log_file(f);
 pclose(f);
}

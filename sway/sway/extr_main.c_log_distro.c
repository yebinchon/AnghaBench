
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int paths ;
typedef int FILE ;


 int SWAY_INFO ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int log_file (int *) ;
 int sway_log (int ,char*,char const*) ;

__attribute__((used)) static void log_distro(void) {
 const char *paths[] = {
  "/etc/lsb-release",
  "/etc/os-release",
  "/etc/debian_version",
  "/etc/redhat-release",
  "/etc/gentoo-release",
 };
 for (size_t i = 0; i < sizeof(paths) / sizeof(char *); ++i) {
  FILE *f = fopen(paths[i], "r");
  if (f) {
   sway_log(SWAY_INFO, "Contents of %s:", paths[i]);
   log_file(f);
   fclose(f);
  }
 }
}

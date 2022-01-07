
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int stderr ;
 scalar_t__ strstr (char*,char*) ;

void detect_raspi(void) {
 bool raspi = 0;
 FILE *f = fopen("/sys/firmware/devicetree/base/model", "r");
 if (!f) {
  return;
 }
 char *line = ((void*)0);
 size_t line_size = 0;
 while (getline(&line, &line_size, f) != -1) {
  if (strstr(line, "Raspberry Pi")) {
   raspi = 1;
   break;
  }
 }
 fclose(f);
 FILE *g = fopen("/proc/modules", "r");
 if (!g) {
  free(line);
  return;
 }
 bool vc4 = 0;
 while (getline(&line, &line_size, g) != -1) {
  if (strstr(line, "vc4")) {
   vc4 = 1;
   break;
  }
 }
 free(line);
 fclose(g);
 if (!vc4 && raspi) {
  fprintf(stderr, "\x1B[1;31mWarning: You have a "
    "Raspberry Pi, but the vc4 Module is "
    "not loaded! Set 'dtoverlay=vc4-kms-v3d'"
    "in /boot/config.txt and reboot.\x1B[0m\n");
 }
}

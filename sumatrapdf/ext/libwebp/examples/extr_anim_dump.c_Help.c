
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static void Help(void) {
  printf("Usage: anim_dump [options] files...\n");
  printf("\nOptions:\n");
  printf("  -folder <string> .... dump folder (default: '.')\n");
  printf("  -prefix <string> .... prefix for dumped frames "
                                  "(default: 'dump_')\n");
  printf("  -tiff ............... save frames as TIFF\n");
  printf("  -pam ................ save frames as PAM\n");
  printf("  -h .................. this help\n");
  printf("  -version ............ print version number and exit\n");
}

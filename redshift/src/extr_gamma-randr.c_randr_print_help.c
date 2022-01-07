
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* _ (char*) ;
 int fputs (char*,int *) ;

__attribute__((used)) static void
randr_print_help(FILE *f)
{
 fputs(_("Adjust gamma ramps with the X RANDR extension.\n"), f);
 fputs("\n", f);



 fputs(_("  screen=N\t\tX screen to apply adjustments to\n"
  "  crtc=N\tList of comma separated CRTCs to apply"
  " adjustments to\n"),
       f);
 fputs("\n", f);
}

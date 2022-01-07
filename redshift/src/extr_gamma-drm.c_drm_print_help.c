
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* _ (char*) ;
 int fputs (char*,int *) ;

__attribute__((used)) static void
drm_print_help(FILE *f)
{
 fputs(_("Adjust gamma ramps with Direct Rendering Manager.\n"), f);
 fputs("\n", f);



 fputs(_("  card=N\tGraphics card to apply adjustments to\n"
  "  crtc=N\tCRTC to apply adjustments to\n"), f);
 fputs("\n", f);
}

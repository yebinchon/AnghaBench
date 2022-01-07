
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* _ (char*) ;
 int fputs (char*,int *) ;

__attribute__((used)) static void
w32gdi_print_help(FILE *f)
{
 fputs(_("Adjust gamma ramps with the Windows GDI.\n"), f);
 fputs("\n", f);
}

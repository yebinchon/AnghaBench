
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* _ (char*) ;
 int fputs (char*,int *) ;

__attribute__((used)) static void
gamma_dummy_print_help(FILE *f)
{
 fputs(_("Does not affect the display but prints the color temperature to the terminal.\n"), f);
 fputs("\n", f);
}

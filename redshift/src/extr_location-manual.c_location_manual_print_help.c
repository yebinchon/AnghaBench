
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* _ (char*) ;
 int fputs (char*,int *) ;

__attribute__((used)) static void
location_manual_print_help(FILE *f)
{
 fputs(_("Specify location manually.\n"), f);
 fputs("\n", f);



 fputs(_("  lat=N\t\tLatitude\n"
  "  lon=N\t\tLongitude\n"), f);
 fputs("\n", f);
 fputs(_("Both values are expected to be floating point numbers,\n"
  "negative values representing west / south, respectively.\n"), f);
 fputs("\n", f);
}

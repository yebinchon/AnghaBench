
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFAULT_DAY_TEMP ;
 int DEFAULT_NIGHT_TEMP ;
 int NEUTRAL_TEMP ;
 char* PACKAGE_BUGREPORT ;
 char* _ (char*) ;
 int fputs (char*,int ) ;
 int printf (char*,...) ;
 int stdout ;

__attribute__((used)) static void
print_help(const char *program_name)
{





 printf(_("Usage: %s -l LAT:LON -t DAY:NIGHT [OPTIONS...]\n"),
  program_name);
 fputs("\n", stdout);



 fputs(_("Set color temperature of display"
  " according to time of day.\n"), stdout);
 fputs("\n", stdout);



 fputs(_("  -h\t\tDisplay this help message\n"
  "  -v\t\tVerbose output\n"
  "  -V\t\tShow program version\n"), stdout);
 fputs("\n", stdout);




 fputs(_("  -b DAY:NIGHT\tScreen brightness to apply (between 0.1 and 1.0)\n"
  "  -c FILE\tLoad settings from specified configuration file\n"
  "  -g R:G:B\tAdditional gamma correction to apply\n"
  "  -l LAT:LON\tYour current location\n"
  "  -l PROVIDER\tSelect provider for automatic"
  " location updates\n"
  "  \t\t(Type `list' to see available providers)\n"
  "  -m METHOD\tMethod to use to set color temperature\n"
  "  \t\t(Type `list' to see available methods)\n"
  "  -o\t\tOne shot mode (do not continuously adjust"
  " color temperature)\n"
  "  -O TEMP\tOne shot manual mode (set color temperature)\n"
  "  -p\t\tPrint mode (only print parameters and exit)\n"
  "  -P\t\tReset existing gamma ramps before applying new"
  " color effect\n"
  "  -x\t\tReset mode (remove adjustment from screen)\n"
  "  -r\t\tDisable fading between color temperatures\n"
  "  -t DAY:NIGHT\tColor temperature to set at daytime/night\n"),
       stdout);
 fputs("\n", stdout);


 printf(_("The neutral temperature is %uK. Using this value will not change "
   "the color\ntemperature of the display. Setting the color temperature "
   "to a value higher\nthan this results in more blue light, and setting "
   "a lower value will result in\nmore red light.\n"),
   NEUTRAL_TEMP);

 fputs("\n", stdout);


 printf(_("Default values:\n\n"
   "  Daytime temperature: %uK\n"
   "  Night temperature: %uK\n"),
        DEFAULT_DAY_TEMP, DEFAULT_NIGHT_TEMP);

 fputs("\n", stdout);


 printf(_("Please report bugs to <%s>\n"), PACKAGE_BUGREPORT);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int period_t ;






 char* _ (char*) ;
 char* gettext (int ) ;
 int * period_names ;
 int printf (char*,char*,...) ;

__attribute__((used)) static void
print_period(period_t period, double transition)
{
 switch (period) {
 case 129:
 case 130:
 case 131:
  printf(_("Period: %s\n"), gettext(period_names[period]));
  break;
 case 128:
  printf(_("Period: %s (%.2f%% day)\n"),
         gettext(period_names[period]),
         transition*100);
  break;
 }
}

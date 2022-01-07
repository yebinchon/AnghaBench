
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float lat; float lon; } ;
typedef TYPE_1__ location_t ;


 char* _ (char*) ;
 double fabs (float) ;
 int printf (char*,double,char const*,double,char const*) ;

__attribute__((used)) static void
print_location(const location_t *location)
{

 const char *north = _("N");

 const char *south = _("S");

 const char *east = _("E");

 const char *west = _("W");




 printf(_("Location: %.2f %s, %.2f %s\n"),
        fabs(location->lat), location->lat >= 0.f ? north : south,
        fabs(location->lon), location->lon >= 0.f ? east : west);
}

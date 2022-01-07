
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lat; scalar_t__ lon; } ;
typedef TYPE_1__ location_t ;


 scalar_t__ MAX_LAT ;
 scalar_t__ MAX_LON ;
 scalar_t__ MIN_LAT ;
 scalar_t__ MIN_LON ;
 char* _ (char*) ;
 int fprintf (int ,char*,scalar_t__,scalar_t__) ;
 int stderr ;

__attribute__((used)) static int
location_is_valid(const location_t *location)
{

 if (location->lat < MIN_LAT || location->lat > MAX_LAT) {

  fprintf(stderr,
   _("Latitude must be between %.1f and %.1f.\n"),
   MIN_LAT, MAX_LAT);
  return 0;
 }


 if (location->lon < MIN_LON || location->lon > MAX_LON) {

  fprintf(stderr,
   _("Longitude must be between"
     " %.1f and %.1f.\n"), MIN_LON, MAX_LON);
  return 0;
 }

 return 1;
}

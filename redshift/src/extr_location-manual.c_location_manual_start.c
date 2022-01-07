
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lon; int lat; } ;
struct TYPE_5__ {TYPE_1__ loc; } ;
typedef TYPE_2__ location_manual_state_t ;


 int EXIT_FAILURE ;
 int _ (char*) ;
 int exit (int ) ;
 int fputs (int ,int ) ;
 scalar_t__ isnan (int ) ;
 int stderr ;

__attribute__((used)) static int
location_manual_start(location_manual_state_t *state)
{

 if (isnan(state->loc.lat) || isnan(state->loc.lon)) {
  fputs(_("Latitude and longitude must be set.\n"), stderr);
  exit(EXIT_FAILURE);
 }

 return 0;
}

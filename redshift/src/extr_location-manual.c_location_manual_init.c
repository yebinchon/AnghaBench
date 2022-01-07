
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* lon; void* lat; } ;
struct TYPE_6__ {TYPE_1__ loc; } ;
typedef TYPE_2__ location_manual_state_t ;


 void* NAN ;
 TYPE_2__* malloc (int) ;

__attribute__((used)) static int
location_manual_init(location_manual_state_t **state)
{
 *state = malloc(sizeof(location_manual_state_t));
 if (*state == ((void*)0)) return -1;

 location_manual_state_t *s = *state;
 s->loc.lat = NAN;
 s->loc.lon = NAN;

 return 0;
}

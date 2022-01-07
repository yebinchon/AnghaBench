
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int location_t ;
struct TYPE_3__ {int loc; } ;
typedef TYPE_1__ location_manual_state_t ;



__attribute__((used)) static int
location_manual_handle(
 location_manual_state_t *state, location_t *location, int *available)
{
 *location = state->loc;
 *available = 1;

 return 0;
}

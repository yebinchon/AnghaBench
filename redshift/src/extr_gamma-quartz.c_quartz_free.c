
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int display_count; struct TYPE_4__* displays; struct TYPE_4__* saved_ramps; } ;
typedef TYPE_1__ quartz_state_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
quartz_free(quartz_state_t *state)
{
 if (state->displays != ((void*)0)) {
  for (int i = 0; i < state->display_count; i++) {
   free(state->displays[i].saved_ramps);
  }
 }
 free(state->displays);
 free(state);
}

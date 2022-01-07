
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int display; struct TYPE_4__* saved_ramps; } ;
typedef TYPE_1__ vidmode_state_t ;


 int XCloseDisplay (int ) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void
vidmode_free(vidmode_state_t *state)
{

 free(state->saved_ramps);


 XCloseDisplay(state->display);

 free(state);
}

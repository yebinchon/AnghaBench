
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* saved_ramps; } ;
typedef TYPE_1__ w32gdi_state_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
w32gdi_free(w32gdi_state_t *state)
{

 free(state->saved_ramps);

 free(state);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * saved_ramps; } ;
typedef TYPE_1__ w32gdi_state_t ;


 TYPE_1__* malloc (int) ;

__attribute__((used)) static int
w32gdi_init(w32gdi_state_t **state)
{
 *state = malloc(sizeof(w32gdi_state_t));
 if (state == ((void*)0)) return -1;

 w32gdi_state_t *s = *state;
 s->saved_ramps = ((void*)0);

 return 0;
}

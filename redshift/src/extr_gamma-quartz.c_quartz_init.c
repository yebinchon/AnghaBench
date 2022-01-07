
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * displays; } ;
typedef TYPE_1__ quartz_state_t ;


 TYPE_1__* malloc (int) ;

__attribute__((used)) static int
quartz_init(quartz_state_t **state)
{
 *state = malloc(sizeof(quartz_state_t));
 if (*state == ((void*)0)) return -1;

 quartz_state_t *s = *state;
 s->displays = ((void*)0);

 return 0;
}

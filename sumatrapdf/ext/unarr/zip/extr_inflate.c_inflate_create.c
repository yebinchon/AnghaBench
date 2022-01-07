
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int inflate64; } ;
typedef TYPE_1__ inflate_state ;


 TYPE_1__* calloc (int,int) ;

inflate_state *inflate_create(bool inflate64)
{
    inflate_state *state = calloc(1, sizeof(inflate_state));
    if (state)
        state->inflate64 = inflate64;
    return state;
}

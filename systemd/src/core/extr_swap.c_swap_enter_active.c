
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ result; } ;
typedef scalar_t__ SwapResult ;
typedef TYPE_1__ Swap ;


 int SWAP_ACTIVE ;
 scalar_t__ SWAP_SUCCESS ;
 int assert (TYPE_1__*) ;
 int swap_set_state (TYPE_1__*,int ) ;

__attribute__((used)) static void swap_enter_active(Swap *s, SwapResult f) {
        assert(s);

        if (s->result == SWAP_SUCCESS)
                s->result = f;

        swap_set_state(s, SWAP_ACTIVE);
}

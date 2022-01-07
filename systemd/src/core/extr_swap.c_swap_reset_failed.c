
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_5__ {scalar_t__ state; void* clean_result; void* result; } ;
typedef TYPE_1__ Swap ;


 TYPE_1__* SWAP (int *) ;
 int SWAP_DEAD ;
 scalar_t__ SWAP_FAILED ;
 void* SWAP_SUCCESS ;
 int assert (TYPE_1__*) ;
 int swap_set_state (TYPE_1__*,int ) ;

__attribute__((used)) static void swap_reset_failed(Unit *u) {
        Swap *s = SWAP(u);

        assert(s);

        if (s->state == SWAP_FAILED)
                swap_set_state(s, SWAP_DEAD);

        s->result = SWAP_SUCCESS;
        s->clean_result = SWAP_SUCCESS;
}

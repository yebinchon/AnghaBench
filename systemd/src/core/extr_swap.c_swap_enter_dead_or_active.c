
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ from_proc_swaps; } ;
typedef int SwapResult ;
typedef TYPE_1__ Swap ;


 int assert (TYPE_1__*) ;
 int swap_enter_active (TYPE_1__*,int ) ;
 int swap_enter_dead (TYPE_1__*,int ) ;

__attribute__((used)) static void swap_enter_dead_or_active(Swap *s, SwapResult f) {
        assert(s);

        if (s->from_proc_swaps)
                swap_enter_active(s, f);
        else
                swap_enter_dead(s, f);
}

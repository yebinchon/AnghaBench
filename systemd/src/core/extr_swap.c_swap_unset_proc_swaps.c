
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int what; } ;
struct TYPE_6__ {int from_proc_swaps; TYPE_1__ parameters_proc_swaps; } ;
typedef TYPE_2__ Swap ;


 int assert (TYPE_2__*) ;
 int mfree (int ) ;

__attribute__((used)) static void swap_unset_proc_swaps(Swap *s) {
        assert(s);

        if (!s->from_proc_swaps)
                return;

        s->parameters_proc_swaps.what = mfree(s->parameters_proc_swaps.what);

        s->from_proc_swaps = 0;
}

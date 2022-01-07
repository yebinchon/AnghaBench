
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* target; int source; } ;
typedef TYPE_1__ UnitRef ;
struct TYPE_7__ {int refs_by_target; } ;


 int LIST_REMOVE (int ,int ,TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int refs_by_target ;
 int unit_add_to_gc_queue (TYPE_3__*) ;

void unit_ref_unset(UnitRef *ref) {
        assert(ref);

        if (!ref->target)
                return;



        unit_add_to_gc_queue(ref->target);

        LIST_REMOVE(refs_by_target, ref->target->refs_by_target, ref);
        ref->source = ref->target = ((void*)0);
}

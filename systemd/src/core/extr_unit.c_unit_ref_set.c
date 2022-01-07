
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int refs_by_target; struct TYPE_10__* target; struct TYPE_10__* source; } ;
typedef TYPE_1__ UnitRef ;
typedef TYPE_1__ Unit ;


 int LIST_PREPEND (int ,int ,TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int refs_by_target ;
 int unit_ref_unset (TYPE_1__*) ;

Unit* unit_ref_set(UnitRef *ref, Unit *source, Unit *target) {
        assert(ref);
        assert(source);
        assert(target);

        if (ref->target)
                unit_ref_unset(ref);

        ref->source = source;
        ref->target = target;
        LIST_PREPEND(refs_by_target, target->refs_by_target, ref);
        return target;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ load_state; struct TYPE_6__* merged_into; } ;
typedef TYPE_1__ Unit ;


 scalar_t__ UNIT_MERGED ;
 int assert (TYPE_1__*) ;
 int assert_se (TYPE_1__*) ;

Unit* unit_follow_merge(Unit *u) {
        assert(u);

        while (u->load_state == UNIT_MERGED)
                assert_se(u = u->merged_into);

        return u;
}

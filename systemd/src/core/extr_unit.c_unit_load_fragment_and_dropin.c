
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ load_state; } ;
typedef TYPE_1__ Unit ;


 int ENOENT ;
 scalar_t__ UNIT_LOADED ;
 scalar_t__ UNIT_STUB ;
 int assert (TYPE_1__*) ;
 int unit_follow_merge (TYPE_1__*) ;
 int unit_load_dropin (int ) ;
 int unit_load_fragment (TYPE_1__*) ;

int unit_load_fragment_and_dropin(Unit *u, bool fragment_required) {
        int r;

        assert(u);


        r = unit_load_fragment(u);
        if (r < 0)
                return r;

        if (u->load_state == UNIT_STUB) {
                if (fragment_required)
                        return -ENOENT;

                u->load_state = UNIT_LOADED;
        }





        return unit_load_dropin(unit_follow_merge(u));
}

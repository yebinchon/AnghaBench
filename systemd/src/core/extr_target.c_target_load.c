
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ load_state; } ;
typedef TYPE_1__ Unit ;
typedef int Target ;


 int * TARGET (TYPE_1__*) ;
 scalar_t__ UNIT_LOADED ;
 int assert (int *) ;
 int target_add_default_dependencies (int *) ;
 int unit_load_fragment_and_dropin (TYPE_1__*,int) ;

__attribute__((used)) static int target_load(Unit *u) {
        Target *t = TARGET(u);
        int r;

        assert(t);

        r = unit_load_fragment_and_dropin(u, 1);
        if (r < 0)
                return r;

        if (u->load_state != UNIT_LOADED)
                return 0;


        return target_add_default_dependencies(t);
}

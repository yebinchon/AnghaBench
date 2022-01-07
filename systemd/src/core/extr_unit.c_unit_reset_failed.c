
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int start_limit_hit; int start_ratelimit; } ;
typedef TYPE_1__ Unit ;
struct TYPE_8__ {int (* reset_failed ) (TYPE_1__*) ;} ;


 TYPE_5__* UNIT_VTABLE (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int ratelimit_reset (int *) ;
 int stub1 (TYPE_1__*) ;

void unit_reset_failed(Unit *u) {
        assert(u);

        if (UNIT_VTABLE(u)->reset_failed)
                UNIT_VTABLE(u)->reset_failed(u);

        ratelimit_reset(&u->start_ratelimit);
        u->start_limit_hit = 0;
}

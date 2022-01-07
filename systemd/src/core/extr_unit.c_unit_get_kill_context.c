
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {scalar_t__ type; } ;
typedef TYPE_1__ Unit ;
struct TYPE_7__ {size_t kill_context_offset; } ;
typedef int KillContext ;


 TYPE_4__* UNIT_VTABLE (TYPE_1__*) ;
 int assert (TYPE_1__*) ;

KillContext *unit_get_kill_context(Unit *u) {
        size_t offset;
        assert(u);

        if (u->type < 0)
                return ((void*)0);

        offset = UNIT_VTABLE(u)->kill_context_offset;
        if (offset <= 0)
                return ((void*)0);

        return (KillContext*) ((uint8_t*) u + offset);
}

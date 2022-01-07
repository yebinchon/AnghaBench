
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int slice; } ;
typedef TYPE_1__ Unit ;
struct TYPE_6__ {char const* id; } ;


 TYPE_4__* UNIT_DEREF (int ) ;
 int UNIT_ISSET (int ) ;
 int assert (TYPE_1__*) ;

const char *unit_slice_name(Unit *u) {
        assert(u);

        if (!UNIT_ISSET(u->slice))
                return ((void*)0);

        return UNIT_DEREF(u->slice)->id;
}

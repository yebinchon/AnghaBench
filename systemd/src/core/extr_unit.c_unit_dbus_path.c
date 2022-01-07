
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
typedef TYPE_1__ Unit ;


 int assert (TYPE_1__*) ;
 char* unit_dbus_path_from_name (int ) ;

char *unit_dbus_path(Unit *u) {
        assert(u);

        if (!u->id)
                return ((void*)0);

        return unit_dbus_path_from_name(u->id);
}

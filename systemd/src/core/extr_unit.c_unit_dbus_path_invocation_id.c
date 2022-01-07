
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int invocation_id_string; int invocation_id; } ;
typedef TYPE_1__ Unit ;


 int assert (TYPE_1__*) ;
 scalar_t__ sd_id128_is_null (int ) ;
 char* unit_dbus_path_from_name (int ) ;

char *unit_dbus_path_invocation_id(Unit *u) {
        assert(u);

        if (sd_id128_is_null(u->invocation_id))
                return ((void*)0);

        return unit_dbus_path_from_name(u->invocation_id_string);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UnitType ;


 char const* unit_dbus_interface_from_type (scalar_t__) ;
 scalar_t__ unit_name_to_type (char const*) ;

const char *unit_dbus_interface_from_name(const char *name) {
        UnitType t;

        t = unit_name_to_type(name);
        if (t < 0)
                return ((void*)0);

        return unit_dbus_interface_from_type(t);
}

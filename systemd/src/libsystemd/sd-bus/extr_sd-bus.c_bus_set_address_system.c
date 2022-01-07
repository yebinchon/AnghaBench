
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus ;


 char const* DEFAULT_SYSTEM_BUS_ADDRESS ;
 int assert (int *) ;
 int sd_bus_set_address (int *,char const*) ;
 char* secure_getenv (char*) ;

int bus_set_address_system(sd_bus *b) {
        const char *e;
        assert(b);

        e = secure_getenv("DBUS_SYSTEM_BUS_ADDRESS");
        if (e)
                return sd_bus_set_address(b, e);

        return sd_bus_set_address(b, DEFAULT_SYSTEM_BUS_ADDRESS);
}

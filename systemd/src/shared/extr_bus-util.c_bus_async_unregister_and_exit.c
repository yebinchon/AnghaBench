
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const sd_event ;
typedef char const sd_bus ;


 int assert (char const*) ;
 int name_owner_change_callback ;
 int sd_bus_add_match_async (char const*,int *,char const*,int ,int *,char const*) ;
 int sd_bus_get_unique_name (char const*,char const**) ;
 int sd_bus_release_name_async (char const*,int *,char const*,int *,int *) ;
 char* strjoina (char*,char const*,char*,char*,char const*,char*,char*) ;

int bus_async_unregister_and_exit(sd_event *e, sd_bus *bus, const char *name) {
        const char *match;
        const char *unique;
        int r;

        assert(e);
        assert(bus);
        assert(name);






        r = sd_bus_get_unique_name(bus, &unique);
        if (r < 0)
                return r;

        match = strjoina(
                        "sender='org.freedesktop.DBus',"
                        "type='signal',"
                        "interface='org.freedesktop.DBus',"
                        "member='NameOwnerChanged',"
                        "path='/org/freedesktop/DBus',"
                        "arg0='", name, "',",
                        "arg1='", unique, "',",
                        "arg2=''");

        r = sd_bus_add_match_async(bus, ((void*)0), match, name_owner_change_callback, ((void*)0), e);
        if (r < 0)
                return r;

        r = sd_bus_release_name_async(bus, ((void*)0), name, ((void*)0), ((void*)0));
        if (r < 0)
                return r;

        return 0;
}

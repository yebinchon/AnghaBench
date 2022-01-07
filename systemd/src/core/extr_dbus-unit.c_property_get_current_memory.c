
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
typedef int Unit ;


 int ENODATA ;
 int assert (int *) ;
 int log_unit_warning_errno (int *,int,char*) ;
 int sd_bus_message_append (int *,char*,int ) ;
 int unit_get_memory_current (int *,int *) ;

__attribute__((used)) static int property_get_current_memory(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        uint64_t sz = (uint64_t) -1;
        Unit *u = userdata;
        int r;

        assert(bus);
        assert(reply);
        assert(u);

        r = unit_get_memory_current(u, &sz);
        if (r < 0 && r != -ENODATA)
                log_unit_warning_errno(u, r, "Failed to get memory.usage_in_bytes attribute: %m");

        return sd_bus_message_append(reply, "t", sz);
}

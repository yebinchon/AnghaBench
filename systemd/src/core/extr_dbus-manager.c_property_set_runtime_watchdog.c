
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef int uint64_t ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;


 int assert (int *) ;
 int assert_cc (int) ;
 int sd_bus_message_read (int *,char*,int *) ;
 int watchdog_set_timeout (int *) ;

__attribute__((used)) static int property_set_runtime_watchdog(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *value,
                void *userdata,
                sd_bus_error *error) {

        usec_t *t = userdata;
        int r;

        assert(bus);
        assert(value);

        assert_cc(sizeof(usec_t) == sizeof(uint64_t));

        r = sd_bus_message_read(value, "t", t);
        if (r < 0)
                return r;

        return watchdog_set_timeout(t);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
typedef int Session ;


 int assert (int *) ;
 int sd_bus_message_append (int *,char*,int) ;
 scalar_t__ session_get_locked_hint (int *) ;

__attribute__((used)) static int property_get_locked_hint(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        Session *s = userdata;

        assert(bus);
        assert(reply);
        assert(s);

        return sd_bus_message_append(reply, "b", session_get_locked_hint(s) > 0);
}

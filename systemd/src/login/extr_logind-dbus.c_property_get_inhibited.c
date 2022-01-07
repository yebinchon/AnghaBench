
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
typedef int Manager ;
typedef int InhibitWhat ;


 int INHIBIT_BLOCK ;
 int INHIBIT_DELAY ;
 int assert (int *) ;
 int inhibit_what_to_string (int ) ;
 int manager_inhibit_what (int *,int ) ;
 int sd_bus_message_append (int *,char*,int ) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static int property_get_inhibited(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        Manager *m = userdata;
        InhibitWhat w;

        assert(bus);
        assert(reply);
        assert(m);

        w = manager_inhibit_what(m, streq(property, "BlockInhibited") ? INHIBIT_BLOCK : INHIBIT_DELAY);

        return sd_bus_message_append(reply, "s", inhibit_what_to_string(w));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
struct TYPE_2__ {char** data; } ;
typedef TYPE_1__ Context ;


 size_t PROP_CHASSIS ;
 char* fallback_chassis () ;
 scalar_t__ isempty (char*) ;
 int sd_bus_message_append (int *,char*,char const*) ;

__attribute__((used)) static int property_get_chassis(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        Context *c = userdata;
        const char *name;

        if (isempty(c->data[PROP_CHASSIS]))
                name = fallback_chassis();
        else
                name = c->data[PROP_CHASSIS];

        return sd_bus_message_append(reply, "s", name);
}

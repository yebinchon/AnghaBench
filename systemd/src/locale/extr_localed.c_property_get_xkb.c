
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
struct TYPE_3__ {int x11_options; int x11_variant; int x11_model; int x11_layout; } ;
typedef TYPE_1__ Context ;


 int EINVAL ;
 int sd_bus_message_append_basic (int *,char,int ) ;
 scalar_t__ streq (char const*,char*) ;
 int x11_read_data (TYPE_1__*,int *) ;

__attribute__((used)) static int property_get_xkb(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        Context *c = userdata;
        int r;

        r = x11_read_data(c, reply);
        if (r < 0)
                return r;

        if (streq(property, "X11Layout"))
                return sd_bus_message_append_basic(reply, 's', c->x11_layout);
        else if (streq(property, "X11Model"))
                return sd_bus_message_append_basic(reply, 's', c->x11_model);
        else if (streq(property, "X11Variant"))
                return sd_bus_message_append_basic(reply, 's', c->x11_variant);
        else if (streq(property, "X11Options"))
                return sd_bus_message_append_basic(reply, 's', c->x11_options);

        return -EINVAL;
}

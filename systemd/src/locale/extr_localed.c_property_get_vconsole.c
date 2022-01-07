
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
struct TYPE_3__ {int vc_keymap_toggle; int vc_keymap; } ;
typedef TYPE_1__ Context ;


 int EINVAL ;
 int sd_bus_message_append_basic (int *,char,int ) ;
 scalar_t__ streq (char const*,char*) ;
 int vconsole_read_data (TYPE_1__*,int *) ;

__attribute__((used)) static int property_get_vconsole(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        Context *c = userdata;
        int r;

        r = vconsole_read_data(c, reply);
        if (r < 0)
                return r;

        if (streq(property, "VConsoleKeymap"))
                return sd_bus_message_append_basic(reply, 's', c->vc_keymap);
        else if (streq(property, "VConsoleKeymapToggle"))
                return sd_bus_message_append_basic(reply, 's', c->vc_keymap_toggle);

        return -EINVAL;
}

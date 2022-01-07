
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ state; int unique_name; struct TYPE_10__* bus; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_1__ sd_bus ;


 int BUS_CLOSING ;
 scalar_t__ BUS_HELLO ;
 int BUS_RUNNING ;
 int EBADMSG ;
 TYPE_1__* IN_SET (scalar_t__,scalar_t__,int ) ;
 int assert (TYPE_1__*) ;
 int bus_set_state (TYPE_1__*,int ) ;
 int free_and_strdup (int *,char const*) ;
 int sd_bus_message_get_errno (TYPE_1__*) ;
 int sd_bus_message_read (TYPE_1__*,char*,char const**) ;
 int service_name_is_valid (char const*) ;
 int synthesize_connected_signal (TYPE_1__*) ;

__attribute__((used)) static int hello_callback(sd_bus_message *reply, void *userdata, sd_bus_error *error) {
        const char *s;
        sd_bus *bus;
        int r;

        assert(reply);
        bus = reply->bus;
        assert(bus);
        assert(IN_SET(bus->state, BUS_HELLO, BUS_CLOSING));

        r = sd_bus_message_get_errno(reply);
        if (r > 0) {
                r = -r;
                goto fail;
        }

        r = sd_bus_message_read(reply, "s", &s);
        if (r < 0)
                goto fail;

        if (!service_name_is_valid(s) || s[0] != ':') {
                r = -EBADMSG;
                goto fail;
        }

        r = free_and_strdup(&bus->unique_name, s);
        if (r < 0)
                goto fail;

        if (bus->state == BUS_HELLO) {
                bus_set_state(bus, BUS_RUNNING);

                r = synthesize_connected_signal(bus);
                if (r < 0)
                        goto fail;
        }

        return 1;

fail:




        bus_set_state(bus, BUS_CLOSING);
        return r;
}

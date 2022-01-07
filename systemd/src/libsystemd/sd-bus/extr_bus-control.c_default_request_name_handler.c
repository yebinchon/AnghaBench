
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_2__ {int message; } ;






 int assert (int *) ;
 int bus_enter_closing (int ) ;
 int log_debug (char*) ;
 int log_debug_errno (int ,char*,int ) ;
 int sd_bus_message_get_bus (int *) ;
 int sd_bus_message_get_errno (int *) ;
 TYPE_1__* sd_bus_message_get_error (int *) ;
 scalar_t__ sd_bus_message_is_method_error (int *,int *) ;
 int sd_bus_message_read (int *,char*,int*) ;

__attribute__((used)) static int default_request_name_handler(
                sd_bus_message *m,
                void *userdata,
                sd_bus_error *ret_error) {

        uint32_t ret;
        int r;

        assert(m);

        if (sd_bus_message_is_method_error(m, ((void*)0))) {
                log_debug_errno(sd_bus_message_get_errno(m),
                                "Unable to request name, failing connection: %s",
                                sd_bus_message_get_error(m)->message);

                bus_enter_closing(sd_bus_message_get_bus(m));
                return 1;
        }

        r = sd_bus_message_read(m, "u", &ret);
        if (r < 0)
                return r;

        switch (ret) {

        case 131:
                log_debug("Already owner of requested service name, ignoring.");
                return 1;

        case 129:
                log_debug("In queue for requested service name.");
                return 1;

        case 128:
                log_debug("Successfully acquired requested service name.");
                return 1;

        case 130:
                log_debug("Requested service name already owned, failing connection.");
                bus_enter_closing(sd_bus_message_get_bus(m));
                return 1;
        }

        log_debug("Unexpected response from RequestName(), failing connection.");
        bus_enter_closing(sd_bus_message_get_bus(m));
        return 1;
}

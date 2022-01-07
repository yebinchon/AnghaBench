
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sd_bus_message ;
struct TYPE_5__ {int message; } ;
typedef TYPE_1__ sd_bus_error ;
typedef int Manager ;


 int assert (int *) ;
 int log_warning_errno (int ,char*,int ) ;
 int sd_bus_error_get_errno (TYPE_1__ const*) ;
 TYPE_1__* sd_bus_message_get_error (int *) ;

__attribute__((used)) static int set_timezone_handler(sd_bus_message *m, void *userdata, sd_bus_error *ret_error) {
        Manager *manager = userdata;
        const sd_bus_error *e;

        assert(m);
        assert(manager);

        e = sd_bus_message_get_error(m);
        if (e)
                log_warning_errno(sd_bus_error_get_errno(e), "Could not set timezone: %s", e->message);

        return 1;
}

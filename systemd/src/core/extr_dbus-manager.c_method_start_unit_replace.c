
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_5__ {TYPE_1__* job; } ;
typedef TYPE_2__ Unit ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef int Manager ;


 int BUS_ERROR_NO_SUCH_JOB ;
 scalar_t__ JOB_START ;
 int assert (int *) ;
 int bus_get_unit_by_name (int *,int *,char const*,TYPE_2__**,int *) ;
 int method_start_unit_generic (int *,int *,scalar_t__,int,int *) ;
 int sd_bus_error_setf (int *,int ,char*,char const*) ;
 int sd_bus_message_read (int *,char*,char const**) ;

__attribute__((used)) static int method_start_unit_replace(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        const char *old_name;
        Unit *u;
        int r;

        assert(message);
        assert(m);

        r = sd_bus_message_read(message, "s", &old_name);
        if (r < 0)
                return r;

        r = bus_get_unit_by_name(m, message, old_name, &u, error);
        if (r < 0)
                return r;
        if (!u->job || u->job->type != JOB_START)
                return sd_bus_error_setf(error, BUS_ERROR_NO_SUCH_JOB, "No job queued for unit %s", old_name);

        return method_start_unit_generic(message, m, JOB_START, 0, error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_5__* unit; int bus_track; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_12__ {int manager; } ;
typedef TYPE_1__ Job ;


 int JOB_CANCELED ;
 int assert (TYPE_1__*) ;
 int bus_verify_manage_units_async (int ,TYPE_1__*,int *) ;
 int job_finish_and_invalidate (TYPE_1__*,int ,int,int) ;
 int mac_selinux_unit_access_check (TYPE_5__*,TYPE_1__*,char*,int *) ;
 int sd_bus_message_get_sender (TYPE_1__*) ;
 int sd_bus_reply_method_return (TYPE_1__*,int *) ;
 int sd_bus_track_contains (int ,int ) ;

int bus_job_method_cancel(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Job *j = userdata;
        int r;

        assert(message);
        assert(j);

        r = mac_selinux_unit_access_check(j->unit, message, "stop", error);
        if (r < 0)
                return r;


        if (!sd_bus_track_contains(j->bus_track, sd_bus_message_get_sender(message))) {


                r = bus_verify_manage_units_async(j->unit->manager, message, error);
                if (r < 0)
                        return r;
                if (r == 0)
                        return 1;
        }

        job_finish_and_invalidate(j, JOB_CANCELED, 1, 0);

        return sd_bus_reply_method_return(message, ((void*)0));
}

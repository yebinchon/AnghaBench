
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int Unit ;
typedef int Manager ;
typedef scalar_t__ JobMode ;


 int JOB_START ;
 int SD_BUS_ERROR_INVALID_ARGS ;
 int assert (int *) ;
 int bus_unit_queue_job (int *,int *,int ,scalar_t__,int ,int *) ;
 int bus_verify_manage_units_async (int *,int *,int *) ;
 scalar_t__ job_mode_from_string (char const*) ;
 int mac_selinux_access_check (int *,char*,int *) ;
 int sd_bus_error_setf (int *,int ,char*,char const*) ;
 int sd_bus_message_read (int *,char*,char const**,char const**) ;
 int transient_aux_units_from_message (int *,int *,int *) ;
 int transient_unit_from_message (int *,int *,char const*,int **,int *) ;

__attribute__((used)) static int method_start_transient_unit(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        const char *name, *smode;
        Manager *m = userdata;
        JobMode mode;
        Unit *u;
        int r;

        assert(message);
        assert(m);

        r = mac_selinux_access_check(message, "start", error);
        if (r < 0)
                return r;

        r = sd_bus_message_read(message, "ss", &name, &smode);
        if (r < 0)
                return r;

        mode = job_mode_from_string(smode);
        if (mode < 0)
                return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Job mode %s is invalid.", smode);

        r = bus_verify_manage_units_async(m, message, error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        r = transient_unit_from_message(m, message, name, &u, error);
        if (r < 0)
                return r;

        r = transient_aux_units_from_message(m, message, error);
        if (r < 0)
                return r;


        return bus_unit_queue_job(message, u, JOB_START, mode, 0, error);
}

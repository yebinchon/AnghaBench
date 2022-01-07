
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int int32_t ;
typedef int Unit ;
typedef scalar_t__ KillWho ;


 int CAP_KILL ;
 scalar_t__ KILL_ALL ;
 int N_ (char*) ;
 int SD_BUS_ERROR_INVALID_ARGS ;
 int SIGNAL_VALID (int ) ;
 int assert (int *) ;
 int bus_verify_manage_units_async_full (int *,char*,int ,int ,int,int *,int *) ;
 scalar_t__ isempty (char const*) ;
 scalar_t__ kill_who_from_string (char const*) ;
 int mac_selinux_unit_access_check (int *,int *,char*,int *) ;
 int sd_bus_error_setf (int *,int ,char*,...) ;
 int sd_bus_message_read (int *,char*,char const**,int *) ;
 int sd_bus_reply_method_return (int *,int *) ;
 int unit_kill (int *,scalar_t__,int ,int *) ;

int bus_unit_method_kill(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Unit *u = userdata;
        const char *swho;
        int32_t signo;
        KillWho who;
        int r;

        assert(message);
        assert(u);

        r = mac_selinux_unit_access_check(u, message, "stop", error);
        if (r < 0)
                return r;

        r = sd_bus_message_read(message, "si", &swho, &signo);
        if (r < 0)
                return r;

        if (isempty(swho))
                who = KILL_ALL;
        else {
                who = kill_who_from_string(swho);
                if (who < 0)
                        return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid who argument %s", swho);
        }

        if (!SIGNAL_VALID(signo))
                return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Signal number out of range.");

        r = bus_verify_manage_units_async_full(
                        u,
                        "kill",
                        CAP_KILL,
                        N_("Authentication is required to send a UNIX signal to the processes of '$(unit)'."),
                        1,
                        message,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        r = unit_kill(u, who, signo, error);
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, ((void*)0));
}

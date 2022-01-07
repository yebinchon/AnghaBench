
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* manager; } ;
typedef TYPE_2__ sd_bus_message ;
typedef int sd_bus_error ;
typedef char const* int32_t ;
struct TYPE_10__ {int polkit_registry; } ;
typedef TYPE_2__ Machine ;
typedef scalar_t__ KillWho ;


 int CAP_KILL ;
 scalar_t__ KILL_ALL ;
 int SD_BUS_ERROR_INVALID_ARGS ;
 int SIGNAL_VALID (char const*) ;
 int UID_INVALID ;
 int assert (TYPE_2__*) ;
 int bus_verify_polkit_async (TYPE_2__*,int ,char*,int *,int,int ,int *,int *) ;
 scalar_t__ isempty (char const*) ;
 scalar_t__ kill_who_from_string (char const*) ;
 int machine_kill (TYPE_2__*,scalar_t__,char const*) ;
 int sd_bus_error_setf (int *,int ,char*,char const*) ;
 int sd_bus_message_read (TYPE_2__*,char*,char const**,char const**) ;
 int sd_bus_reply_method_return (TYPE_2__*,int *) ;

int bus_machine_method_kill(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Machine *m = userdata;
        const char *swho;
        int32_t signo;
        KillWho who;
        int r;

        assert(message);
        assert(m);

        r = sd_bus_message_read(message, "si", &swho, &signo);
        if (r < 0)
                return r;

        if (isempty(swho))
                who = KILL_ALL;
        else {
                who = kill_who_from_string(swho);
                if (who < 0)
                        return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid kill parameter '%s'", swho);
        }

        if (!SIGNAL_VALID(signo))
                return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid signal %i", signo);

        r = bus_verify_polkit_async(
                        message,
                        CAP_KILL,
                        "org.freedesktop.machine1.manage-machines",
                        ((void*)0),
                        0,
                        UID_INVALID,
                        &m->manager->polkit_registry,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        r = machine_kill(m, who, signo);
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, ((void*)0));
}

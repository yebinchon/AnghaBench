
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int polkit_registry; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_14__ {char* id; } ;
typedef TYPE_2__ Seat ;
typedef TYPE_1__ Manager ;


 int CAP_SYS_ADMIN ;
 int SD_BUS_ERROR_INVALID_ARGS ;
 scalar_t__ SEAT_IS_AUTO (char const*) ;
 scalar_t__ SEAT_IS_SELF (char const*) ;
 int UID_INVALID ;
 int assert (TYPE_1__*) ;
 int attach_device (TYPE_1__*,char const*,char const*) ;
 int bus_verify_polkit_async (TYPE_1__*,int ,char*,int *,int,int ,int *,int *) ;
 int manager_get_seat_from_creds (TYPE_1__*,TYPE_1__*,char const*,int *,TYPE_2__**) ;
 int path_is_normalized (char const*) ;
 int path_startswith (char const*,char*) ;
 int sd_bus_error_setf (int *,int ,char*,char const*) ;
 int sd_bus_message_read (TYPE_1__*,char*,char const**,char const**,int*) ;
 int sd_bus_reply_method_return (TYPE_1__*,int *) ;
 int seat_name_is_valid (char const*) ;

__attribute__((used)) static int method_attach_device(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        const char *sysfs, *seat;
        Manager *m = userdata;
        int interactive, r;

        assert(message);
        assert(m);

        r = sd_bus_message_read(message, "ssb", &seat, &sysfs, &interactive);
        if (r < 0)
                return r;

        if (!path_is_normalized(sysfs))
                return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Path %s is not normalized", sysfs);
        if (!path_startswith(sysfs, "/sys"))
                return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Path %s is not in /sys", sysfs);

        if (SEAT_IS_SELF(seat) || SEAT_IS_AUTO(seat)) {
                Seat *found;

                r = manager_get_seat_from_creds(m, message, seat, error, &found);
                if (r < 0)
                        return r;

                seat = found->id;

        } else if (!seat_name_is_valid(seat))
                return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Seat name %s is not valid", seat);

        r = bus_verify_polkit_async(
                        message,
                        CAP_SYS_ADMIN,
                        "org.freedesktop.login1.attach-device",
                        ((void*)0),
                        interactive,
                        UID_INVALID,
                        &m->polkit_registry,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        r = attach_device(m, seat, sysfs);
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, ((void*)0));
}

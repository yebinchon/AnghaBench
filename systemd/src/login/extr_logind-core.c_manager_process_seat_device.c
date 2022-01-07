
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sd_device ;
struct TYPE_11__ {int seat; } ;
struct TYPE_10__ {int seats; int devices; } ;
typedef int Seat ;
typedef TYPE_1__ Manager ;
typedef TYPE_2__ Device ;


 int DEVICE_ACTION_REMOVE ;
 int assert (TYPE_1__*) ;
 int device_attach (TYPE_2__*,int *) ;
 scalar_t__ device_for_action (int *,int ) ;
 int device_free (TYPE_2__*) ;
 void* hashmap_get (int ,char const*) ;
 scalar_t__ isempty (char const*) ;
 int log_device_warning (int *,char*,char const*) ;
 int manager_add_device (TYPE_1__*,char const*,int,TYPE_2__**) ;
 int manager_add_seat (TYPE_1__*,char const*,int **) ;
 scalar_t__ sd_device_get_property_value (int *,char*,char const**) ;
 int sd_device_get_syspath (int *,char const**) ;
 scalar_t__ sd_device_has_tag (int *,char*) ;
 int seat_add_to_gc_queue (int ) ;
 int seat_name_is_valid (char const*) ;
 int seat_start (int *) ;

int manager_process_seat_device(Manager *m, sd_device *d) {
        Device *device;
        int r;

        assert(m);

        if (device_for_action(d, DEVICE_ACTION_REMOVE)) {
                const char *syspath;

                r = sd_device_get_syspath(d, &syspath);
                if (r < 0)
                        return 0;

                device = hashmap_get(m->devices, syspath);
                if (!device)
                        return 0;

                seat_add_to_gc_queue(device->seat);
                device_free(device);

        } else {
                const char *sn, *syspath;
                bool master;
                Seat *seat;

                if (sd_device_get_property_value(d, "ID_SEAT", &sn) < 0 || isempty(sn))
                        sn = "seat0";

                if (!seat_name_is_valid(sn)) {
                        log_device_warning(d, "Device with invalid seat name %s found, ignoring.", sn);
                        return 0;
                }

                seat = hashmap_get(m->seats, sn);
                master = sd_device_has_tag(d, "master-of-seat") > 0;


                if (!master && !seat)
                        return 0;

                r = sd_device_get_syspath(d, &syspath);
                if (r < 0)
                        return r;

                r = manager_add_device(m, syspath, master, &device);
                if (r < 0)
                        return r;

                if (!seat) {
                        r = manager_add_seat(m, sn, &seat);
                        if (r < 0) {
                                if (!device->seat)
                                        device_free(device);

                                return r;
                        }
                }

                device_attach(device, seat);
                seat_start(seat);
        }

        return 0;
}

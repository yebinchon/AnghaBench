
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* seat; int * session_devices; } ;
struct TYPE_9__ {int devices; } ;
typedef int SessionDevice ;
typedef TYPE_1__ Seat ;
typedef TYPE_2__ Device ;


 int LIST_REMOVE (int ,int ,TYPE_2__*) ;
 int assert (TYPE_2__*) ;
 int devices ;
 int seat_add_to_gc_queue (TYPE_1__*) ;
 int seat_has_master_device (TYPE_1__*) ;
 int seat_send_changed (TYPE_1__*,char*,int *) ;
 int session_device_free (int *) ;

__attribute__((used)) static void device_detach(Device *d) {
        Seat *s;
        SessionDevice *sd;

        assert(d);

        if (!d->seat)
                return;

        while ((sd = d->session_devices))
                session_device_free(sd);

        s = d->seat;
        LIST_REMOVE(devices, d->seat->devices, d);
        d->seat = ((void*)0);

        if (!seat_has_master_device(s)) {
                seat_add_to_gc_queue(s);
                seat_send_changed(s, "CanGraphical", ((void*)0));
        }
}

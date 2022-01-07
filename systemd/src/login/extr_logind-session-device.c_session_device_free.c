
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {struct TYPE_12__* node; int dev; TYPE_2__* session; TYPE_1__* device; int fd; scalar_t__ pushed_fd; } ;
struct TYPE_11__ {int devices; int id; } ;
struct TYPE_10__ {int session_devices; } ;
typedef TYPE_3__ SessionDevice ;


 int LIST_REMOVE (int ,int ,TYPE_3__*) ;
 int SESSION_DEVICE_RELEASE ;
 int assert (TYPE_3__*) ;
 int free (TYPE_3__*) ;
 int hashmap_remove (int ,int *) ;
 int major (int ) ;
 int minor (int ) ;
 int safe_close (int ) ;
 int sd_by_device ;
 int sd_notifyf (int,char*,int ,int ,int ) ;
 int session_device_notify (TYPE_3__*,int ) ;
 int session_device_stop (TYPE_3__*) ;

void session_device_free(SessionDevice *sd) {
        assert(sd);


        if (sd->pushed_fd)
                (void) sd_notifyf(0,
                                  "FDSTOREREMOVE=1\n"
                                  "FDNAME=session-%s-device-%u-%u",
                                  sd->session->id, major(sd->dev), minor(sd->dev));

        session_device_stop(sd);
        session_device_notify(sd, SESSION_DEVICE_RELEASE);
        safe_close(sd->fd);

        LIST_REMOVE(sd_by_device, sd->device->session_devices, sd);

        hashmap_remove(sd->session->devices, &sd->dev);

        free(sd->node);
        free(sd);
}

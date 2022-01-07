
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_5__ {TYPE_1__* userdata; } ;
struct TYPE_4__ {int polkit_registry; } ;
typedef TYPE_1__ Manager ;
typedef TYPE_2__ Image ;


 int CAP_SYS_ADMIN ;
 int UID_INVALID ;
 int assert (int *) ;
 int bus_verify_polkit_async (int *,int ,char*,int *,int,int ,int *,int *) ;
 int image_read_only (TYPE_2__*,int) ;
 int sd_bus_message_read (int *,char*,int*) ;
 int sd_bus_reply_method_return (int *,int *) ;

int bus_image_method_mark_read_only(
                sd_bus_message *message,
                void *userdata,
                sd_bus_error *error) {

        Image *image = userdata;
        Manager *m = image->userdata;
        int r, read_only;

        assert(message);

        r = sd_bus_message_read(message, "b", &read_only);
        if (r < 0)
                return r;

        r = bus_verify_polkit_async(
                        message,
                        CAP_SYS_ADMIN,
                        "org.freedesktop.machine1.manage-images",
                        ((void*)0),
                        0,
                        UID_INVALID,
                        &m->polkit_registry,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        r = image_read_only(image, read_only);
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, ((void*)0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int active; int type; int fd; } ;
typedef TYPE_1__ SessionDevice ;





 int assert (TYPE_1__*) ;
 int log_error (char*) ;
 int sd_drmdropmaster (int ) ;
 int sd_eviocrevoke (int ) ;

__attribute__((used)) static void session_device_stop(SessionDevice *sd) {
        assert(sd);

        if (!sd->active)
                return;

        switch (sd->type) {

        case 130:
                if (sd->fd < 0) {
                        log_error("Failed to de-activate DRM fd, as the fd was lost (maybe logind restart went wrong?)");
                        return;
                }





                sd_drmdropmaster(sd->fd);
                break;

        case 129:




                sd_eviocrevoke(sd->fd);
                break;

        case 128:
        default:

                break;
        }

        sd->active = 0;
}

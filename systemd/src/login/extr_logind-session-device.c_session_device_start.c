
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int active; int type; int fd; int session; } ;
typedef TYPE_1__ SessionDevice ;





 int EBADF ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert (TYPE_1__*) ;
 int log_error_errno (int ,char*) ;
 int safe_close (int) ;
 int sd_drmsetmaster (int) ;
 int session_device_open (TYPE_1__*,int) ;
 TYPE_1__* session_is_active (int ) ;

__attribute__((used)) static int session_device_start(SessionDevice *sd) {
        int r;

        assert(sd);
        assert(session_is_active(sd->session));

        if (sd->active)
                return 0;

        switch (sd->type) {

        case 130:
                if (sd->fd < 0)
                        return log_error_errno(SYNTHETIC_ERRNO(EBADF),
                                               "Failed to re-activate DRM fd, as the fd was lost (maybe logind restart went wrong?)");



                r = sd_drmsetmaster(sd->fd);
                if (r < 0)
                        return r;
                break;

        case 129:

                r = session_device_open(sd, 1);
                if (r < 0)
                        return r;



                safe_close(sd->fd);
                sd->fd = r;
                break;

        case 128:
        default:

                break;
        }

        sd->active = 1;
        return 0;
}

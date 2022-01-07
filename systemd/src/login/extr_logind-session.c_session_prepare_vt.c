
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vt_mode {void* acqsig; void* relsig; int mode; } ;
struct TYPE_7__ {int vtnr; TYPE_1__* user; } ;
struct TYPE_6__ {int uid; } ;
typedef TYPE_2__ Session ;


 int KDSETMODE ;
 int KDSKBMODE ;
 struct vt_mode* KD_GRAPHICS ;
 struct vt_mode* K_OFF ;
 void* SIGRTMIN ;
 int VT_PROCESS ;
 int VT_SETMODE ;
 int errno ;
 int fchown (int,int ,int) ;
 int ioctl (int,int ,struct vt_mode*) ;
 int log_error_errno (int ,char*,int) ;
 int session_open_vt (TYPE_2__*) ;
 int session_restore_vt (TYPE_2__*) ;

__attribute__((used)) static int session_prepare_vt(Session *s) {
        int vt, r;
        struct vt_mode mode = {};

        if (s->vtnr < 1)
                return 0;

        vt = session_open_vt(s);
        if (vt < 0)
                return vt;

        r = fchown(vt, s->user->uid, -1);
        if (r < 0) {
                r = log_error_errno(errno,
                                    "Cannot change owner of /dev/tty%u: %m",
                                    s->vtnr);
                goto error;
        }

        r = ioctl(vt, KDSKBMODE, K_OFF);
        if (r < 0) {
                r = log_error_errno(errno,
                                    "Cannot set K_OFF on /dev/tty%u: %m",
                                    s->vtnr);
                goto error;
        }

        r = ioctl(vt, KDSETMODE, KD_GRAPHICS);
        if (r < 0) {
                r = log_error_errno(errno,
                                    "Cannot set KD_GRAPHICS on /dev/tty%u: %m",
                                    s->vtnr);
                goto error;
        }




        mode.mode = VT_PROCESS;
        mode.relsig = SIGRTMIN;
        mode.acqsig = SIGRTMIN + 1;
        r = ioctl(vt, VT_SETMODE, &mode);
        if (r < 0) {
                r = log_error_errno(errno,
                                    "Cannot set VT_PROCESS on /dev/tty%u: %m",
                                    s->vtnr);
                goto error;
        }

        return 0;

error:
        session_restore_vt(s);
        return r;
}

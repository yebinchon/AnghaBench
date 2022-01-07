
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vtfd; } ;
typedef TYPE_1__ Session ;


 int EIO ;
 int TAKE_FD (int) ;
 int log_warning_errno (int,char*) ;
 int safe_close (int) ;
 int session_open_vt (TYPE_1__*) ;
 int vt_restore (int) ;

__attribute__((used)) static void session_restore_vt(Session *s) {
        int r;

        r = vt_restore(s->vtfd);
        if (r == -EIO) {
                int vt, old_fd;







                old_fd = TAKE_FD(s->vtfd);

                vt = session_open_vt(s);
                safe_close(old_fd);

                if (vt >= 0)
                        r = vt_restore(vt);
        }

        if (r < 0)
                log_warning_errno(r, "Failed to restore VT, ignoring: %m");

        s->vtfd = safe_close(s->vtfd);
}

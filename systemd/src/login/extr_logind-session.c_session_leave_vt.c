
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ vtfd; int id; } ;
typedef TYPE_1__ Session ;


 int assert (TYPE_1__*) ;
 int log_debug_errno (int,char*,int ) ;
 int session_device_pause_all (TYPE_1__*) ;
 int vt_release (scalar_t__,int) ;

void session_leave_vt(Session *s) {
        int r;

        assert(s);
        if (s->vtfd < 0)
                return;

        session_device_pause_all(s);
        r = vt_release(s->vtfd, 0);
        if (r < 0)
                log_debug_errno(r, "Cannot release VT of session %s: %m", s->id);
}

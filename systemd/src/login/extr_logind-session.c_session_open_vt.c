
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vtnr; scalar_t__ vtfd; int id; } ;
typedef TYPE_1__ Session ;


 int DECIMAL_STR_MAX (int) ;
 int ENODEV ;
 int O_CLOEXEC ;
 int O_NOCTTY ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int log_error_errno (scalar_t__,char*,char*,int ) ;
 int open_terminal (char*,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int session_open_vt(Session *s) {
        char path[sizeof("/dev/tty") + DECIMAL_STR_MAX(s->vtnr)];

        if (s->vtnr < 1)
                return -ENODEV;

        if (s->vtfd >= 0)
                return s->vtfd;

        sprintf(path, "/dev/tty%u", s->vtnr);
        s->vtfd = open_terminal(path, O_RDWR | O_CLOEXEC | O_NONBLOCK | O_NOCTTY);
        if (s->vtfd < 0)
                return log_error_errno(s->vtfd, "cannot open VT %s of session %s: %m", path, s->id);

        return s->vtfd;
}

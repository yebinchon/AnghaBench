
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int t ;
typedef size_t ssize_t ;
struct TYPE_8__ {TYPE_1__* manager; } ;
struct TYPE_7__ {int console_active_fd; } ;
typedef TYPE_2__ Seat ;


 int EIO ;
 int SEEK_SET ;
 int assert (TYPE_2__*) ;
 int errno ;
 int log_error (char*,char*) ;
 int log_error_errno (int,char*) ;
 scalar_t__ lseek (int ,int ,int ) ;
 size_t read (int ,char*,int) ;
 int seat_active_vt_changed (TYPE_2__*,int) ;
 int seat_has_vts (TYPE_2__*) ;
 char* strerror_safe (int) ;
 int truncate_nl (char*) ;
 int vtnr_from_tty (char*) ;

int seat_read_active_vt(Seat *s) {
        char t[64];
        ssize_t k;
        int vtnr;

        assert(s);

        if (!seat_has_vts(s))
                return 0;

        if (lseek(s->manager->console_active_fd, SEEK_SET, 0) < 0)
                return log_error_errno(errno, "lseek on console_active_fd failed: %m");

        k = read(s->manager->console_active_fd, t, sizeof(t)-1);
        if (k <= 0) {
                log_error("Failed to read current console: %s", k < 0 ? strerror_safe(errno) : "EOF");
                return k < 0 ? -errno : -EIO;
        }

        t[k] = 0;
        truncate_nl(t);

        vtnr = vtnr_from_tty(t);
        if (vtnr < 0) {
                log_error_errno(vtnr, "Hm, /sys/class/tty/tty0/active is badly formatted: %m");
                return -EIO;
        }

        return seat_active_vt_changed(s, vtnr);
}

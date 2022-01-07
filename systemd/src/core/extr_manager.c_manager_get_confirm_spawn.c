
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_4__ {char const* confirm_spawn; } ;
typedef TYPE_1__ Manager ;


 int ENOTTY ;
 int S_ISCHR (int ) ;
 int assert (TYPE_1__*) ;
 int errno ;
 int log_warning_errno (int,char*,char const*) ;
 scalar_t__ path_equal (char const*,char*) ;
 scalar_t__ stat (char const*,struct stat*) ;

const char *manager_get_confirm_spawn(Manager *m) {
        static int last_errno = 0;
        struct stat st;
        int r;

        assert(m);
        if (!m->confirm_spawn || path_equal(m->confirm_spawn, "/dev/console"))
                return m->confirm_spawn;

        if (stat(m->confirm_spawn, &st) < 0) {
                r = -errno;
                goto fail;
        }

        if (!S_ISCHR(st.st_mode)) {
                r = -ENOTTY;
                goto fail;
        }

        last_errno = 0;
        return m->confirm_spawn;

fail:
        if (last_errno != r)
                last_errno = log_warning_errno(r, "Failed to open %s, using default console: %m", m->confirm_spawn);

        return "/dev/console";
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
struct stat {int st_mtim; } ;
struct TYPE_4__ {int etc_localtime_accessible; scalar_t__ etc_localtime_mtime; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int errno ;
 int log_debug_errno (int ,char*) ;
 scalar_t__ lstat (char*,struct stat*) ;
 scalar_t__ timespec_load (int *) ;

__attribute__((used)) static int manager_read_timezone_stat(Manager *m) {
        struct stat st;
        bool changed;

        assert(m);


        if (lstat("/etc/localtime", &st) < 0) {
                log_debug_errno(errno, "Failed to stat /etc/localtime, ignoring: %m");
                changed = m->etc_localtime_accessible;
                m->etc_localtime_accessible = 0;
        } else {
                usec_t k;

                k = timespec_load(&st.st_mtim);
                changed = !m->etc_localtime_accessible || k != m->etc_localtime_mtime;

                m->etc_localtime_mtime = k;
                m->etc_localtime_accessible = 1;
        }

        return changed;
}

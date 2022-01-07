
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {int ut_pid; int ut_type; } ;


 int RUN_LVL ;
 int _PATH_UTMPX ;
 int assert (int*) ;
 int endutxent () ;
 int errno ;
 char* getenv (char*) ;
 struct utmpx* getutxid (struct utmpx*) ;
 int setutxent () ;
 scalar_t__ utmpxname (int ) ;

int utmp_get_runlevel(int *runlevel, int *previous) {
        struct utmpx *found, lookup = { .ut_type = RUN_LVL };
        int r;
        const char *e;

        assert(runlevel);
        e = getenv("RUNLEVEL");
        if (e && e[0] > 0) {
                *runlevel = e[0];

                if (previous) {


                        e = getenv("PREVLEVEL");
                        if (e && e[0] > 0)
                                *previous = e[0];
                        else
                                *previous = 0;
                }

                return 0;
        }

        if (utmpxname(_PATH_UTMPX) < 0)
                return -errno;

        setutxent();

        found = getutxid(&lookup);
        if (!found)
                r = -errno;
        else {
                int a, b;

                a = found->ut_pid & 0xFF;
                b = (found->ut_pid >> 8) & 0xFF;

                *runlevel = a;
                if (previous)
                        *previous = b;

                r = 0;
        }

        endutxent();

        return r;
}

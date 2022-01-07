
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {int ut_pid; int ut_user; int ut_type; } ;


 int ESRCH ;
 int RUN_LVL ;
 int assert (int) ;
 int init_entry (struct utmpx*,int ) ;
 int strncpy (int ,char*,int) ;
 int utmp_get_runlevel (int*,int *) ;
 int write_entry_both (struct utmpx*) ;

int utmp_put_runlevel(int runlevel, int previous) {
        struct utmpx store = {};
        int r;

        assert(runlevel > 0);

        if (previous <= 0) {


                r = utmp_get_runlevel(&previous, ((void*)0));
                if (r < 0) {
                        if (r != -ESRCH)
                                return r;

                        previous = 0;
                }
        }

        if (previous == runlevel)
                return 0;

        init_entry(&store, 0);

        store.ut_type = RUN_LVL;
        store.ut_pid = (runlevel & 0xFF) | ((previous & 0xFF) << 8);
        strncpy(store.ut_user, "runlevel", sizeof(store.ut_user));

        return write_entry_both(&store);
}

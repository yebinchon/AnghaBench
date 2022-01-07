
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {int ut_user; int ut_type; } ;


 int RUN_LVL ;
 int init_entry (struct utmpx*,int ) ;
 int strncpy (int ,char*,int) ;
 int write_entry_both (struct utmpx*) ;

int utmp_put_shutdown(void) {
        struct utmpx store = {};

        init_entry(&store, 0);

        store.ut_type = RUN_LVL;
        strncpy(store.ut_user, "shutdown", sizeof(store.ut_user));

        return write_entry_both(&store);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
struct utmpx {int ut_user; int ut_type; } ;


 int BOOT_TIME ;
 int init_entry (struct utmpx*,int ) ;
 int strncpy (int ,char*,int) ;
 int write_entry_both (struct utmpx*) ;

int utmp_put_reboot(usec_t t) {
        struct utmpx store = {};

        init_entry(&store, t);

        store.ut_type = BOOT_TIME;
        strncpy(store.ut_user, "reboot", sizeof(store.ut_user));

        return write_entry_both(&store);
}

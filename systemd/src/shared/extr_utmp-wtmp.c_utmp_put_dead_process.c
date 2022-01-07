
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int e_termination; int e_exit; } ;
struct utmpx {scalar_t__ ut_pid; int ut_tv; int ut_host; int ut_user; TYPE_1__ ut_exit; int ut_type; int ut_id; } ;
typedef int store_wtmp ;
typedef int store ;
typedef scalar_t__ pid_t ;


 int DEAD_PROCESS ;
 int INIT_PROCESS ;
 int assert (char const*) ;
 int copy_suffix (int ,int,char const*) ;
 struct utmpx* getutxid (struct utmpx*) ;
 int init_timestamp (struct utmpx*,int ) ;
 int memcpy (struct utmpx*,struct utmpx*,int) ;
 int setutxent () ;
 int write_utmp_wtmp (struct utmpx*,struct utmpx*) ;
 int zero (int ) ;

int utmp_put_dead_process(const char *id, pid_t pid, int code, int status) {
        struct utmpx lookup = {
                .ut_type = INIT_PROCESS
        }, store, store_wtmp, *found;

        assert(id);

        setutxent();


        copy_suffix(store.ut_id, sizeof(store.ut_id), id);

        found = getutxid(&lookup);
        if (!found)
                return 0;

        if (found->ut_pid != pid)
                return 0;

        memcpy(&store, found, sizeof(store));
        store.ut_type = DEAD_PROCESS;
        store.ut_exit.e_termination = code;
        store.ut_exit.e_exit = status;

        zero(store.ut_user);
        zero(store.ut_host);
        zero(store.ut_tv);

        memcpy(&store_wtmp, &store, sizeof(store_wtmp));

        init_timestamp(&store_wtmp, 0);

        return write_utmp_wtmp(&store, &store_wtmp);
}

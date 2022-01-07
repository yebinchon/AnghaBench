
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {int ut_type; int ut_user; int ut_line; int ut_id; int ut_session; int ut_pid; } ;
typedef int pid_t ;


 int INIT_PROCESS ;
 scalar_t__ IN_SET (int,int,int) ;
 int LOGIN_PROCESS ;
 int USER_PROCESS ;
 int assert (char const*) ;
 int copy_suffix (int ,int,char const*) ;
 int init_timestamp (struct utmpx*,int ) ;
 int strncpy (int ,char const*,int) ;
 int strncpy_exact (int ,char const*,int) ;
 int write_entry_both (struct utmpx*) ;

int utmp_put_init_process(const char *id, pid_t pid, pid_t sid, const char *line, int ut_type, const char *user) {
        struct utmpx store = {
                .ut_type = INIT_PROCESS,
                .ut_pid = pid,
                .ut_session = sid,
        };
        int r;

        assert(id);

        init_timestamp(&store, 0);


        copy_suffix(store.ut_id, sizeof(store.ut_id), id);

        if (line)
                strncpy_exact(store.ut_line, line, sizeof(store.ut_line));

        r = write_entry_both(&store);
        if (r < 0)
                return r;

        if (IN_SET(ut_type, LOGIN_PROCESS, USER_PROCESS)) {
                store.ut_type = LOGIN_PROCESS;
                r = write_entry_both(&store);
                if (r < 0)
                        return r;
        }

        if (ut_type == USER_PROCESS) {
                store.ut_type = USER_PROCESS;
                strncpy(store.ut_user, user, sizeof(store.ut_user)-1);
                r = write_entry_both(&store);
                if (r < 0)
                        return r;
        }

        return 0;
}

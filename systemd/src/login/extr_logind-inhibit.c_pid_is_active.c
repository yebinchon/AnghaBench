
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int Session ;
typedef int Manager ;


 int manager_get_session_by_pid (int *,int ,int **) ;
 int session_is_active (int *) ;

__attribute__((used)) static int pid_is_active(Manager *m, pid_t pid) {
        Session *s;
        int r;



        r = manager_get_session_by_pid(m, pid, &s);
        if (r < 0)
                return r;



        if (r == 0)
                return 1;

        return session_is_active(s);
}

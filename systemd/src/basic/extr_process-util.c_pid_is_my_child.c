
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int get_process_ppid (int,int*) ;
 int getpid_cached () ;

int pid_is_my_child(pid_t pid) {
        pid_t ppid;
        int r;

        if (pid <= 1)
                return 0;

        r = get_process_ppid(pid, &ppid);
        if (r < 0)
                return r;

        return ppid == getpid_cached();
}

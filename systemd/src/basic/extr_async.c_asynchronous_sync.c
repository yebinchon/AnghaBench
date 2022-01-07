
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int EXIT_SUCCESS ;
 int FORK_CLOSE_ALL_FDS ;
 int FORK_RESET_SIGNALS ;
 int _exit (int ) ;
 int safe_fork (char*,int,int *) ;
 int sync () ;

int asynchronous_sync(pid_t *ret_pid) {
        int r;






        r = safe_fork("(sd-sync)", FORK_RESET_SIGNALS|FORK_CLOSE_ALL_FDS, ret_pid);
        if (r < 0)
                return r;
        if (r == 0) {

                (void) sync();
                _exit(EXIT_SUCCESS);
        }

        return 0;
}

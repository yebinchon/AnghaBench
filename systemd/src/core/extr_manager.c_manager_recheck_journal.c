
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Manager ;


 scalar_t__ MANAGER_IS_RELOADING (int *) ;
 int assert (int *) ;
 int getpid_cached () ;
 int log_open () ;
 int log_set_prohibit_ipc (int) ;
 int manager_journal_is_running (int *) ;

void manager_recheck_journal(Manager *m) {

        assert(m);


        if (getpid_cached() != 1)
                return;


        if (MANAGER_IS_RELOADING(m))
                return;




        log_set_prohibit_ipc(!manager_journal_is_running(m));
        log_open();
}

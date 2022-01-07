
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SwapState ;
typedef int Swap ;


 int JOB_RESTART ;
 int KILL_KILL ;
 int KILL_RESTART ;
 int KILL_TERMINATE ;
 scalar_t__ SWAP_DEACTIVATING_SIGTERM ;
 int UNIT (int *) ;
 scalar_t__ unit_has_job_type (int ,int ) ;

__attribute__((used)) static int state_to_kill_operation(Swap *s, SwapState state) {
        if (state == SWAP_DEACTIVATING_SIGTERM) {
                if (unit_has_job_type(UNIT(s), JOB_RESTART))
                        return KILL_RESTART;
                else
                        return KILL_TERMINATE;
        }

        return KILL_KILL;
}

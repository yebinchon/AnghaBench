
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tid_t ;
struct TYPE_3__ {int j_wait_commit; int j_commit_sequence; int j_commit_request; } ;
typedef TYPE_1__ journal_t ;


 int jbd_debug (int,char*,int ,int ) ;
 int tid_geq (int ,int ) ;
 int wake_up (int *) ;

int __log_start_commit(journal_t *journal, tid_t target)
{



    if (!tid_geq(journal->j_commit_request, target)) {





        journal->j_commit_request = target;
        jbd_debug(1, "JBD: requesting commit %d/%d\n",
                  journal->j_commit_request,
                  journal->j_commit_sequence);
        wake_up(&journal->j_wait_commit);
        return 1;
    }
    return 0;
}

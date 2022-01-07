
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tid_t ;
struct TYPE_4__ {int j_state_lock; } ;
typedef TYPE_1__ journal_t ;


 int __log_start_commit (TYPE_1__*,int ) ;
 int jbd_lock (int *) ;
 int jbd_unlock (int *) ;

int log_start_commit(journal_t *journal, tid_t tid)
{
    int ret;

    jbd_lock(&journal->j_state_lock);
    ret = __log_start_commit(journal, tid);
    jbd_unlock(&journal->j_state_lock);
    return ret;
}

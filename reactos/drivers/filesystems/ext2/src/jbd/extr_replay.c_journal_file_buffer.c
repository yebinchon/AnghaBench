
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* t_journal; } ;
typedef TYPE_2__ transaction_t ;
struct journal_head {int dummy; } ;
struct TYPE_5__ {int j_list_lock; } ;


 int __journal_file_buffer (struct journal_head*,TYPE_2__*,int) ;
 int jbd_lock (int *) ;
 int jbd_lock_bh_state (int ) ;
 int jbd_unlock (int *) ;
 int jbd_unlock_bh_state (int ) ;
 int jh2bh (struct journal_head*) ;

void journal_file_buffer(struct journal_head *jh,
                         transaction_t *transaction, int jlist)
{
    jbd_lock_bh_state(jh2bh(jh));
    jbd_lock(&transaction->t_journal->j_list_lock);
    __journal_file_buffer(jh, transaction, jlist);
    jbd_unlock(&transaction->t_journal->j_list_lock);
    jbd_unlock_bh_state(jh2bh(jh));
}

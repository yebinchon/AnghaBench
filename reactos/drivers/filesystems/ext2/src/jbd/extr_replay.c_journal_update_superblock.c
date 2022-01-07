
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct buffer_head {int dummy; } ;
struct TYPE_4__ {scalar_t__ j_tail_sequence; scalar_t__ j_transaction_sequence; scalar_t__ j_tail; scalar_t__ j_errno; int j_state_lock; int j_flags; struct buffer_head* j_sb_buffer; TYPE_2__* j_superblock; } ;
typedef TYPE_1__ journal_t ;
struct TYPE_5__ {scalar_t__ s_start; void* s_errno; void* s_sequence; } ;
typedef TYPE_2__ journal_superblock_t ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int JFS_FLUSHED ;
 int SWRITE ;
 void* cpu_to_be32 (scalar_t__) ;
 int jbd_debug (int,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int jbd_lock (int *) ;
 int jbd_unlock (int *) ;
 int ll_rw_block (int ,int,struct buffer_head**) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int sync_dirty_buffer (struct buffer_head*) ;

void journal_update_superblock(journal_t *journal, int wait)
{
    journal_superblock_t *sb = journal->j_superblock;
    struct buffer_head *bh = journal->j_sb_buffer;
    if (sb->s_start == 0 && journal->j_tail_sequence ==
            journal->j_transaction_sequence) {
        jbd_debug(1,"JBD: Skipping superblock update on recovered sb "
                  "(start %ld, seq %d, errno %d)\n",
                  journal->j_tail, journal->j_tail_sequence,
                  journal->j_errno);
        goto out;
    }

    jbd_lock(&journal->j_state_lock);
    jbd_debug(1,"JBD: updating superblock (start %ld, seq %d, errno %d)\n",
              journal->j_tail, journal->j_tail_sequence, journal->j_errno);

    sb->s_sequence = cpu_to_be32(journal->j_tail_sequence);
    sb->s_start = cpu_to_be32(journal->j_tail);
    sb->s_errno = cpu_to_be32(journal->j_errno);
    jbd_unlock(&journal->j_state_lock);

    BUFFER_TRACE(bh, "marking dirty");
    mark_buffer_dirty(bh);
    if (wait)
        sync_dirty_buffer(bh);
    else
        ll_rw_block(SWRITE, 1, &bh);

out:




    jbd_lock(&journal->j_state_lock);
    if (sb->s_start)
        journal->j_flags &= ~JFS_FLUSHED;
    else
        journal->j_flags |= JFS_FLUSHED;
    jbd_unlock(&journal->j_state_lock);
}

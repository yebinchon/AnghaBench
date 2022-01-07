
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int j_flags; int j_errno; } ;
typedef TYPE_1__ journal_t ;


 int JFS_ABORT ;
 int __journal_abort_hard (TYPE_1__*) ;
 int journal_update_superblock (TYPE_1__*,int) ;

__attribute__((used)) static void __journal_abort_soft (journal_t *journal, int err)
{
    if (journal->j_flags & JFS_ABORT)
        return;

    if (!journal->j_errno)
        journal->j_errno = err;

    __journal_abort_hard(journal);

    if (err)
        journal_update_superblock(journal, 1);
}

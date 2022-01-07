
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* j_errno; void* j_last; void* j_first; void* j_tail; void* j_tail_sequence; TYPE_2__* j_superblock; } ;
typedef TYPE_1__ journal_t ;
struct TYPE_6__ {int s_errno; int s_maxlen; int s_first; int s_start; int s_sequence; } ;
typedef TYPE_2__ journal_superblock_t ;


 void* be32_to_cpu (int ) ;
 int journal_get_superblock (TYPE_1__*) ;

__attribute__((used)) static int load_superblock(journal_t *journal)
{
    int err;
    journal_superblock_t *sb;

    err = journal_get_superblock(journal);
    if (err)
        return err;

    sb = journal->j_superblock;

    journal->j_tail_sequence = be32_to_cpu(sb->s_sequence);
    journal->j_tail = be32_to_cpu(sb->s_start);
    journal->j_first = be32_to_cpu(sb->s_first);
    journal->j_last = be32_to_cpu(sb->s_maxlen);
    journal->j_errno = be32_to_cpu(sb->s_errno);

    return 0;
}

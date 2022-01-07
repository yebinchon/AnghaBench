
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * j_sb_buffer; scalar_t__ j_tail; } ;
typedef TYPE_1__ journal_t ;


 int brelse (int *) ;
 int journal_update_superblock (TYPE_1__*,int ) ;

void journal_wipe_recovery(journal_t *journal)
{


    journal->j_tail = 0;
    if (journal->j_sb_buffer) {
        journal_update_superblock(journal, 0);
        brelse(journal->j_sb_buffer);
        journal->j_sb_buffer = ((void*)0);
    }
}

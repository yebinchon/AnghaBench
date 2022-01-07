
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
typedef int handle_t ;


 int no_journal ;

handle_t *__ext4_journal_start_sb(void *icb, struct super_block *sb, unsigned int line,
      int type, int blocks, int rsv_blocks)
{
 return &no_journal;
}

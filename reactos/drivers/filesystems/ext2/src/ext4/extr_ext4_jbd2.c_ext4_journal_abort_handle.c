
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
typedef int handle_t ;



void ext4_journal_abort_handle(const char *caller, unsigned int line,
          const char *err_fn, struct buffer_head *bh,
          handle_t *handle, int err)
{
}

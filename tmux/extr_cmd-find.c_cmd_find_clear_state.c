
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_find_state {int flags; int idx; } ;


 int memset (struct cmd_find_state*,int ,int) ;

void
cmd_find_clear_state(struct cmd_find_state *fs, int flags)
{
 memset(fs, 0, sizeof *fs);

 fs->flags = flags;

 fs->idx = -1;
}

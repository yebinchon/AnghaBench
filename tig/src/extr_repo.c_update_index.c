
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exec_dir; } ;


 int io_run_bg (char const**,int ) ;
 TYPE_1__ repo ;

bool
update_index(void)
{
 const char *update_index_argv[] = {
  "git", "update-index", "-q", "--unmerged", "--refresh", ((void*)0)
 };

 return io_run_bg(update_index_argv, repo.exec_dir);
}

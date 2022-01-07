
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exec_dir; } ;


 int open_external_viewer (char const**,int ,int,int,int,int,int,char*) ;
 TYPE_1__ repo ;

__attribute__((used)) static void
open_mergetool(const char *file)
{
 const char *mergetool_argv[] = { "git", "mergetool", file, ((void*)0) };

 open_external_viewer(mergetool_argv, repo.exec_dir, 0, 1, 0, 1, 1, "");
}

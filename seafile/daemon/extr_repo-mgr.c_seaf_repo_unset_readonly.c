
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; int manager; int is_readonly; } ;
typedef TYPE_1__ SeafRepo ;


 int FALSE ;
 int REPO_PROP_IS_READONLY ;
 int save_repo_property (int ,int ,int ,char*) ;

void
seaf_repo_unset_readonly (SeafRepo *repo)
{
    repo->is_readonly = FALSE;
    save_repo_property (repo->manager, repo->id, REPO_PROP_IS_READONLY, "false");
}

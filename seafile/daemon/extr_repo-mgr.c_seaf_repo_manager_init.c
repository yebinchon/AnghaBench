
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* seaf; int index_dir; } ;
struct TYPE_6__ {int seaf_dir; } ;
typedef TYPE_2__ SeafRepoManager ;


 scalar_t__ checkdir_with_mkdir (int ) ;
 int init_folder_perms (TYPE_2__*) ;
 int load_repos (TYPE_2__*,int ) ;
 int seaf_warning (char*,int ) ;

int
seaf_repo_manager_init (SeafRepoManager *mgr)
{
    if (checkdir_with_mkdir (mgr->index_dir) < 0) {
        seaf_warning ("Index dir %s does not exist and is unable to create\n",
                   mgr->index_dir);
        return -1;
    }


    load_repos (mgr, mgr->seaf->seaf_dir);


    init_folder_perms (mgr);

    return 0;
}

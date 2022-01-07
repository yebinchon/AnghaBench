
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int cevent_handler ;
struct TYPE_8__ {int ev_mgr; } ;
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int cevent_id; } ;
typedef TYPE_2__ SeafBranchManager ;


 int cevent_manager_register (int ,int ,int *) ;
 int open_db (TYPE_2__*) ;
 scalar_t__ publish_repo_update_event ;
 TYPE_4__* seaf ;

int
seaf_branch_manager_init (SeafBranchManager *mgr)
{






    return open_db (mgr);
}

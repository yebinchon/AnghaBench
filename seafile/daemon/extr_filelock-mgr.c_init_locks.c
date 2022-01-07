
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* gpointer ;
struct TYPE_4__ {int filelock_mgr; } ;
struct TYPE_3__ {int locked_by_me; } ;
typedef TYPE_1__ LockInfo ;


 TYPE_2__* seaf ;
 int seaf_filelock_manager_lock_wt_file (int ,char*,char*) ;

__attribute__((used)) static void
init_locks (gpointer key, gpointer value, gpointer user_data)
{
    char *repo_id = user_data;
    char *path = key;
    LockInfo *info = value;

    if (!info->locked_by_me) {
        seaf_filelock_manager_lock_wt_file (seaf->filelock_mgr,
                                            repo_id,
                                            path);
    }
}

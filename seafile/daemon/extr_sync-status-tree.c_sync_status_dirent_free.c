
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int subdir; struct TYPE_4__* name; } ;
typedef TYPE_1__ SyncStatusDirent ;


 int g_free (TYPE_1__*) ;
 int sync_status_dir_free (int ) ;

__attribute__((used)) static void
sync_status_dirent_free (SyncStatusDirent *dirent)
{
    if (!dirent)
        return;
    g_free (dirent->name);
    sync_status_dir_free (dirent->subdir);
    g_free (dirent);
}

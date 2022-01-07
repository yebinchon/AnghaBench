
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int sync_mgr; } ;
struct TYPE_4__ {int dirents; } ;
typedef TYPE_1__ SyncStatusDir ;


 int g_hash_table_remove (int ,char const*) ;
 TYPE_2__* seaf ;
 int seaf_sync_manager_add_refresh_path (int ,char const*) ;

__attribute__((used)) static void
remove_item (SyncStatusDir *dir, const char *dname, const char *fullpath)
{
    g_hash_table_remove (dir->dirents, dname);



}

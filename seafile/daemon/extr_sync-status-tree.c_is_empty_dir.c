
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_5__ {TYPE_1__* subdir; } ;
struct TYPE_4__ {int dirents; } ;
typedef TYPE_2__ SyncStatusDirent ;


 scalar_t__ g_hash_table_size (int ) ;

__attribute__((used)) inline static gboolean
is_empty_dir (SyncStatusDirent *dirent)
{
    return (g_hash_table_size(dirent->subdir->dirents) == 0);
}

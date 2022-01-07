
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* path; } ;
typedef TYPE_1__ FileLockInfo ;


 int g_free (TYPE_1__*) ;

void file_lock_info_free (FileLockInfo *info)
{
    if (!info)
        return;
    g_free (info->path);
    g_free (info);
}

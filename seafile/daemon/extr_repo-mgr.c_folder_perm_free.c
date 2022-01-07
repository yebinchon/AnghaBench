
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* permission; struct TYPE_4__* path; } ;
typedef TYPE_1__ FolderPerm ;


 int g_free (TYPE_1__*) ;

void
folder_perm_free (FolderPerm *perm)
{
    if (!perm)
        return;

    g_free (perm->path);
    g_free (perm->permission);
    g_free (perm);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int permission; int path; } ;
struct TYPE_9__ {TYPE_2__* data; struct TYPE_9__* next; } ;
typedef TYPE_1__ GList ;
typedef TYPE_2__ FolderPerm ;


 TYPE_2__* folder_perm_new (int ,int ) ;
 TYPE_1__* g_list_append (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static GList *
folder_perm_list_copy (GList *perms)
{
    GList *ret = ((void*)0), *ptr;
    FolderPerm *perm, *new_perm;

    for (ptr = perms; ptr; ptr = ptr->next) {
        perm = ptr->data;
        new_perm = folder_perm_new (perm->path, perm->permission);
        ret = g_list_append (ret, new_perm);
    }

    return ret;
}

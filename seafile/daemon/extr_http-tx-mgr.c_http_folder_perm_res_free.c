
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ data; struct TYPE_6__* next; } ;
struct TYPE_5__ {TYPE_2__* group_perms; TYPE_2__* user_perms; } ;
typedef TYPE_1__ HttpFolderPermRes ;
typedef TYPE_2__ GList ;
typedef int FolderPerm ;


 int folder_perm_free (int *) ;
 int g_free (TYPE_1__*) ;

void
http_folder_perm_res_free (HttpFolderPermRes *res)
{
    GList *ptr;

    if (!res)
        return;
    for (ptr = res->user_perms; ptr; ptr = ptr->next)
        folder_perm_free ((FolderPerm *)ptr->data);
    for (ptr = res->group_perms; ptr; ptr = ptr->next)
        folder_perm_free ((FolderPerm *)ptr->data);
    g_free (res);
}

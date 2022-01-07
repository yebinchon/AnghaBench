
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int gint ;
typedef TYPE_1__* gconstpointer ;
struct TYPE_5__ {int path; } ;
typedef TYPE_1__ FolderPerm ;


 int strcmp (int ,int ) ;

__attribute__((used)) static gint
comp_folder_perms (gconstpointer a, gconstpointer b)
{
    const FolderPerm *perm_a = a, *perm_b = b;

    return (strcmp (perm_b->path, perm_a->path));
}

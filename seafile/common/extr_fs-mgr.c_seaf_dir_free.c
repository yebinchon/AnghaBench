
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; scalar_t__ data; } ;
struct TYPE_6__ {struct TYPE_6__* ondisk; TYPE_2__* entries; } ;
typedef int SeafDirent ;
typedef TYPE_1__ SeafDir ;
typedef TYPE_2__ GList ;


 int g_free (TYPE_1__*) ;
 int g_list_free (TYPE_2__*) ;
 int seaf_dirent_free (int *) ;

void
seaf_dir_free (SeafDir *dir)
{
    if (dir == ((void*)0))
        return;

    GList *ptr = dir->entries;
    while (ptr) {
        seaf_dirent_free ((SeafDirent *)ptr->data);
        ptr = ptr->next;
    }

    g_list_free (dir->entries);
    g_free (dir->ondisk);
    g_free(dir);
}

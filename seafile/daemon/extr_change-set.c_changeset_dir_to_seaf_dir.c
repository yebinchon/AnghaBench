
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int version; int dents; } ;
struct TYPE_11__ {int * data; struct TYPE_11__* next; } ;
typedef int SeafDirent ;
typedef int SeafDir ;
typedef TYPE_1__ GList ;
typedef int ChangeSetDirent ;
typedef TYPE_2__ ChangeSetDir ;


 int * changeset_dirent_to_seaf_dirent (int ,int *) ;
 int compare_dents ;
 TYPE_1__* g_hash_table_get_values (int ) ;
 int g_list_free (TYPE_1__*) ;
 TYPE_1__* g_list_prepend (TYPE_1__*,int *) ;
 TYPE_1__* g_list_sort (TYPE_1__*,int ) ;
 int * seaf_dir_new (int *,TYPE_1__*,int ) ;

__attribute__((used)) static SeafDir *
changeset_dir_to_seaf_dir (ChangeSetDir *dir)
{
    GList *dents = ((void*)0), *seaf_dents = ((void*)0);
    GList *ptr;
    ChangeSetDirent *dent;
    SeafDirent *seaf_dent;
    SeafDir *seaf_dir;

    dents = g_hash_table_get_values (dir->dents);
    for (ptr = dents; ptr; ptr = ptr->next) {
        dent = ptr->data;
        seaf_dent = changeset_dirent_to_seaf_dirent (dir->version, dent);
        seaf_dents = g_list_prepend (seaf_dents, seaf_dent);
    }

    seaf_dents = g_list_sort (seaf_dents, compare_dents);


    seaf_dir = seaf_dir_new (((void*)0), seaf_dents, dir->version);

    g_list_free (dents);
    return seaf_dir;
}

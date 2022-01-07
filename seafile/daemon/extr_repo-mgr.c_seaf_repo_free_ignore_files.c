
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; struct TYPE_4__* next; } ;
typedef TYPE_1__ GList ;


 int free (int ) ;
 int g_list_free (TYPE_1__*) ;

void seaf_repo_free_ignore_files (GList *ignore_list)
{
    GList *p;

    if (ignore_list == ((void*)0))
        return;

    for (p = ignore_list; p != ((void*)0); p = p->next)
        free(p->data);

    g_list_free (ignore_list);
}

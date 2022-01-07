
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * data; struct TYPE_9__* next; } ;
typedef int SeafRepo ;
typedef int GObject ;
typedef TYPE_1__ GList ;


 int * convert_repo (int *) ;
 int free_repo_obj ;
 int g_list_free_full (TYPE_1__*,int ) ;
 TYPE_1__* g_list_prepend (TYPE_1__*,int *) ;
 TYPE_1__* g_list_reverse (TYPE_1__*) ;

__attribute__((used)) static GList *
convert_repo_list (GList *inner_repos)
{
    GList *ret = ((void*)0), *ptr;
    GObject *repo = ((void*)0);

    for (ptr = inner_repos; ptr; ptr=ptr->next) {
        SeafRepo *r = ptr->data;
        repo = convert_repo (r);
        if (!repo) {
            g_list_free_full (ret, free_repo_obj);
            return ((void*)0);
        }

        ret = g_list_prepend (ret, repo);
    }

    return g_list_reverse (ret);
}

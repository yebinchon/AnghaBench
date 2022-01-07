
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {TYPE_1__* data; struct TYPE_17__* next; } ;
struct TYPE_16__ {int commit_id; } ;
typedef TYPE_1__ SeafCommit ;
typedef TYPE_2__ GList ;


 TYPE_1__** calloc (int,int) ;
 int compare_commit_by_time ;
 int free (TYPE_1__**) ;
 int g_debug (char*) ;
 int g_list_free (TYPE_2__*) ;
 TYPE_2__* g_list_insert_sorted_with_data (TYPE_2__*,TYPE_1__*,int ,int *) ;
 int g_list_length (TYPE_2__*) ;
 TYPE_2__* merge_bases_many (TYPE_1__*,int,TYPE_1__**) ;
 int seaf_commit_unref (TYPE_1__*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static GList *
get_independent_commits (GList *commits)
{
    SeafCommit **rslt;
    GList *list, *result;
    int cnt, i, j;
    SeafCommit *c;

    g_debug ("Get independent commits.\n");

    cnt = g_list_length (commits);

    rslt = calloc(cnt, sizeof(*rslt));
    for (list = commits, i = 0; list; list = list->next)
        rslt[i++] = list->data;
    g_list_free (commits);

    for (i = 0; i < cnt - 1; i++) {
        for (j = i+1; j < cnt; j++) {
            if (!rslt[i] || !rslt[j])
                continue;
            result = merge_bases_many(rslt[i], 1, &rslt[j]);
            for (list = result; list; list = list->next) {
                c = list->data;



                if (strcmp (rslt[i]->commit_id, c->commit_id) == 0) {
                    seaf_commit_unref (rslt[i]);
                    rslt[i] = ((void*)0);
                }
                if (strcmp (rslt[j]->commit_id, c->commit_id) == 0) {
                    seaf_commit_unref (rslt[j]);
                    rslt[j] = ((void*)0);
                }
                seaf_commit_unref (c);
            }
        }
    }


    result = ((void*)0);
    for (i = 0; i < cnt; i++) {
        if (rslt[i])
            result = g_list_insert_sorted_with_data (result, rslt[i],
                                                     compare_commit_by_time,
                                                     ((void*)0));
    }
    free(rslt);
    return result;
}

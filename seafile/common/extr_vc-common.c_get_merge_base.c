
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * data; struct TYPE_5__* next; } ;
typedef int SeafCommit ;
typedef TYPE_1__ GList ;


 int ** calloc (int,int) ;
 int free (int **) ;
 int g_list_free (TYPE_1__*) ;
 int g_list_length (TYPE_1__*) ;
 TYPE_1__* merge_bases_many (int *,int,int **) ;

SeafCommit *
get_merge_base (SeafCommit *head, SeafCommit *remote)
{
    GList *result, *iter;
    SeafCommit *one, **twos;
    int n, i;
    SeafCommit *ret = ((void*)0);

    one = head;
    twos = (SeafCommit **) calloc (1, sizeof(SeafCommit *));
    twos[0] = remote;
    n = 1;
    result = merge_bases_many (one, n, twos);
    free (twos);
    if (!result || !result->next)
        goto done;





    while (1) {
        n = g_list_length (result) - 1;
        one = result->data;
        twos = calloc (n, sizeof(SeafCommit *));
        for (iter = result->next, i = 0; i < n; iter = iter->next, i++) {
            twos[i] = iter->data;
        }
        g_list_free (result);

        result = merge_bases_many (one, n, twos);
        free (twos);
        if (!result || !result->next)
            break;
    }

done:
    if (result)
        ret = result->data;
    g_list_free (result);

    return ret;
}

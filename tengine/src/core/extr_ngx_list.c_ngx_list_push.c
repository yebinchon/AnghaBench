
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nalloc; int size; TYPE_2__* last; int pool; } ;
typedef TYPE_1__ ngx_list_t ;
struct TYPE_5__ {int nelts; int * elts; struct TYPE_5__* next; } ;
typedef TYPE_2__ ngx_list_part_t ;


 void* ngx_palloc (int ,int) ;

void *
ngx_list_push(ngx_list_t *l)
{
    void *elt;
    ngx_list_part_t *last;

    last = l->last;

    if (last->nelts == l->nalloc) {



        last = ngx_palloc(l->pool, sizeof(ngx_list_part_t));
        if (last == ((void*)0)) {
            return ((void*)0);
        }

        last->elts = ngx_palloc(l->pool, l->nalloc * l->size);
        if (last->elts == ((void*)0)) {
            return ((void*)0);
        }

        last->nelts = 0;
        last->next = ((void*)0);

        l->last->next = last;
        l->last = last;
    }

    elt = (char *) last->elts + l->size * last->nelts;
    last->nelts++;

    return elt;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_6__ {int * last; int * end; } ;
struct TYPE_7__ {TYPE_1__ d; } ;
typedef TYPE_2__ ngx_pool_t ;
struct TYPE_8__ {size_t nelts; size_t nalloc; size_t size; void* elts; TYPE_2__* pool; } ;
typedef TYPE_3__ ngx_array_t ;


 int ngx_memcpy (void*,void*,size_t) ;
 void* ngx_palloc (TYPE_2__*,int) ;

void *
ngx_array_push(ngx_array_t *a)
{
    void *elt, *new;
    size_t size;
    ngx_pool_t *p;

    if (a->nelts == a->nalloc) {



        size = a->size * a->nalloc;

        p = a->pool;

        if ((u_char *) a->elts + size == p->d.last
            && p->d.last + a->size <= p->d.end)
        {





            p->d.last += a->size;
            a->nalloc++;

        } else {


            new = ngx_palloc(p, 2 * size);
            if (new == ((void*)0)) {
                return ((void*)0);
            }

            ngx_memcpy(new, a->elts, size);
            a->elts = new;
            a->nalloc *= 2;
        }
    }

    elt = (u_char *) a->elts + a->size * a->nelts;
    a->nelts++;

    return elt;
}

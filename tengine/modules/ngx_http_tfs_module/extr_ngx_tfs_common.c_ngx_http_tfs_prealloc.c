
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_6__ {int * last; int * end; } ;
struct TYPE_7__ {TYPE_1__ d; } ;
typedef TYPE_2__ ngx_pool_t ;


 int ngx_memcpy (void*,void*,size_t) ;
 void* ngx_palloc (TYPE_2__*,size_t) ;
 int ngx_pfree (TYPE_2__*,void*) ;

void *
ngx_http_tfs_prealloc(ngx_pool_t *pool, void *p,
    size_t old_size, size_t new_size)
{
    void *new;

    if (p == ((void*)0)) {
        return ngx_palloc(pool, new_size);
    }

    if (new_size == 0) {
        if ((u_char *) p + old_size == pool->d.last) {
           pool->d.last = p;
        } else {
           ngx_pfree(pool, p);
        }

        return ((void*)0);
    }

    if ((u_char *) p + old_size == pool->d.last
        && (u_char *) p + new_size <= pool->d.end)
    {
        pool->d.last = (u_char *) p + new_size;
        return p;
    }

    new = ngx_palloc(pool, new_size);
    if (new == ((void*)0)) {
        return ((void*)0);
    }

    ngx_memcpy(new, p, old_size);

    ngx_pfree(pool, p);

    return new;
}

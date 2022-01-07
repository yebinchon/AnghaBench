
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_pool_t ;
struct TYPE_4__ {int temporary; int * last; int * end; int * start; int * pos; } ;
typedef TYPE_1__ ngx_buf_t ;


 TYPE_1__* ngx_calloc_buf (int *) ;
 int * ngx_palloc (int *,size_t) ;

ngx_buf_t *
ngx_create_temp_buf(ngx_pool_t *pool, size_t size)
{
    ngx_buf_t *b;

    b = ngx_calloc_buf(pool);
    if (b == ((void*)0)) {
        return ((void*)0);
    }

    b->start = ngx_palloc(pool, size);
    if (b->start == ((void*)0)) {
        return ((void*)0);
    }
    b->pos = b->start;
    b->last = b->start;
    b->end = b->last + size;
    b->temporary = 1;

    return b;
}

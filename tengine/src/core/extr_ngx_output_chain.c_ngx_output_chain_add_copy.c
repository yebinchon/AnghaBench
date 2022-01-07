
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int ngx_pool_t ;
typedef int ngx_int_t ;
struct TYPE_10__ {struct TYPE_10__* next; TYPE_2__* buf; } ;
typedef TYPE_1__ ngx_chain_t ;
struct TYPE_11__ {scalar_t__ file_pos; scalar_t__ file_last; int pos; int last; scalar_t__ in_file; } ;
typedef TYPE_2__ ngx_buf_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 scalar_t__ NGX_SENDFILE_LIMIT ;
 TYPE_1__* ngx_alloc_chain_link (int *) ;
 scalar_t__ ngx_buf_in_memory (TYPE_2__*) ;
 TYPE_2__* ngx_calloc_buf (int *) ;
 int ngx_memcpy (TYPE_2__*,TYPE_2__*,int) ;

__attribute__((used)) static ngx_int_t
ngx_output_chain_add_copy(ngx_pool_t *pool, ngx_chain_t **chain,
    ngx_chain_t *in)
{
    ngx_chain_t *cl, **ll;




    ll = chain;

    for (cl = *chain; cl; cl = cl->next) {
        ll = &cl->next;
    }

    while (in) {

        cl = ngx_alloc_chain_link(pool);
        if (cl == ((void*)0)) {
            return NGX_ERROR;
        }
        cl->buf = in->buf;
        in = in->next;



        cl->next = ((void*)0);
        *ll = cl;
        ll = &cl->next;
    }

    return NGX_OK;
}

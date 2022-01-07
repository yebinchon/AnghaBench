
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_19__ {int segment_count; } ;
struct TYPE_18__ {int * filter_ctx; } ;
struct TYPE_16__ {scalar_t__ code; } ;
struct TYPE_17__ {TYPE_3__ action; } ;
struct TYPE_21__ {int temporary; int * start; int * end; int * last; int * pos; } ;
struct TYPE_15__ {int * connection; } ;
struct TYPE_14__ {int * start; } ;
struct TYPE_20__ {TYPE_6__ file; int is_large_file; int writer; TYPE_5__ output; int pool; TYPE_4__ r_ctx; TYPE_8__ body_buffer; struct TYPE_20__* tfs_peer_servers; TYPE_2__ peer; TYPE_1__ header_buffer; int * recv_chain; struct TYPE_20__* parent; struct TYPE_20__* next; struct TYPE_20__* free_sts; } ;
typedef TYPE_7__ ngx_http_tfs_t ;
typedef int ngx_http_tfs_peer_connection_t ;
typedef TYPE_8__ ngx_buf_t ;


 scalar_t__ NGX_HTTP_TFS_ACTION_READ_FILE ;
 scalar_t__ NGX_HTTP_TFS_ACTION_WRITE_FILE ;
 size_t NGX_HTTP_TFS_DATA_SERVER ;
 int NGX_HTTP_TFS_MAX_FRAGMENT_SIZE ;
 size_t NGX_HTTP_TFS_NAME_SERVER ;
 int NGX_HTTP_TFS_NO ;
 int NGX_HTTP_TFS_SERVER_COUNT ;
 int * ngx_http_tfs_alloc_chains (int ,int) ;
 int ngx_memcpy (TYPE_7__*,TYPE_7__*,int) ;
 void* ngx_palloc (int ,int) ;
 TYPE_7__* ngx_pcalloc (int ,int) ;

ngx_http_tfs_t *
ngx_http_tfs_alloc_st(ngx_http_tfs_t *t)
{
    ngx_buf_t *b;
    ngx_http_tfs_t *st;

    st = t->free_sts;

    if (st) {
        t->free_sts = st->next;
        return st;
    }

    st = ngx_palloc(t->pool, sizeof(ngx_http_tfs_t));
    if (st == ((void*)0)) {
        return ((void*)0);
    }
    ngx_memcpy(st, t, sizeof(ngx_http_tfs_t));
    st->parent = t;






    st->recv_chain = ngx_http_tfs_alloc_chains(t->pool, 2);
    if (st->recv_chain == ((void*)0)) {
        return ((void*)0);
    }
    st->header_buffer.start = ((void*)0);


    st->tfs_peer_servers = ngx_pcalloc(t->pool,
        sizeof(ngx_http_tfs_peer_connection_t) * NGX_HTTP_TFS_SERVER_COUNT);
    if (st->tfs_peer_servers == ((void*)0)) {
        return ((void*)0);
    }


    ngx_memcpy(&st->tfs_peer_servers[NGX_HTTP_TFS_NAME_SERVER],
               &t->tfs_peer_servers[NGX_HTTP_TFS_NAME_SERVER],
               sizeof(ngx_http_tfs_peer_connection_t));
    st->tfs_peer_servers[NGX_HTTP_TFS_NAME_SERVER].body_buffer.start = ((void*)0);
    st->tfs_peer_servers[NGX_HTTP_TFS_NAME_SERVER].peer.connection = ((void*)0);


    ngx_memcpy(&st->tfs_peer_servers[NGX_HTTP_TFS_DATA_SERVER],
               &t->tfs_peer_servers[NGX_HTTP_TFS_DATA_SERVER],
               sizeof(ngx_http_tfs_peer_connection_t));
    b = &st->tfs_peer_servers[NGX_HTTP_TFS_DATA_SERVER].body_buffer;
    if (t->r_ctx.action.code == NGX_HTTP_TFS_ACTION_WRITE_FILE) {
        b->start = ((void*)0);

    } else if (t->r_ctx.action.code == NGX_HTTP_TFS_ACTION_READ_FILE){



        b->start = ngx_palloc(t->pool, NGX_HTTP_TFS_MAX_FRAGMENT_SIZE);
        if (b->start == ((void*)0)) {
            return ((void*)0);
        }

        b->pos = b->start;
        b->last = b->start;
        b->end = b->start + NGX_HTTP_TFS_MAX_FRAGMENT_SIZE;
        b->temporary = 1;
    }

    st->output.filter_ctx = &st->writer;

    st->is_large_file = NGX_HTTP_TFS_NO;
    st->file.segment_count = 1;

    return st;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_42__ TYPE_9__ ;
typedef struct TYPE_41__ TYPE_8__ ;
typedef struct TYPE_40__ TYPE_7__ ;
typedef struct TYPE_39__ TYPE_6__ ;
typedef struct TYPE_38__ TYPE_5__ ;
typedef struct TYPE_37__ TYPE_4__ ;
typedef struct TYPE_36__ TYPE_3__ ;
typedef struct TYPE_35__ TYPE_2__ ;
typedef struct TYPE_34__ TYPE_1__ ;
typedef struct TYPE_33__ TYPE_12__ ;
typedef struct TYPE_32__ TYPE_11__ ;
typedef struct TYPE_31__ TYPE_10__ ;


typedef int u_char ;
typedef int ngx_queue_t ;
struct TYPE_37__ {int front_queue; int backend_queue; TYPE_11__* out; } ;
typedef TYPE_4__ ngx_multi_request_t ;
struct TYPE_38__ {int send_list; } ;
typedef TYPE_5__ ngx_multi_connection_t ;
typedef int ngx_int_t ;
struct TYPE_39__ {int pool; TYPE_3__* upstream; int * backend_r; TYPE_2__* connection; } ;
typedef TYPE_6__ ngx_http_request_t ;
struct TYPE_40__ {int heartbeat_interval; } ;
typedef TYPE_7__ ngx_http_dubbo_loc_conf_t ;
struct TYPE_41__ {TYPE_11__* free; int busy; TYPE_11__* out; TYPE_9__* connection; } ;
typedef TYPE_8__ ngx_http_dubbo_ctx_t ;
struct TYPE_42__ {int ping_event; } ;
typedef TYPE_9__ ngx_dubbo_connection_t ;
struct TYPE_31__ {int log; TYPE_6__* data; } ;
typedef TYPE_10__ ngx_connection_t ;
struct TYPE_32__ {TYPE_12__* buf; struct TYPE_32__* next; } ;
typedef TYPE_11__ ngx_chain_t ;
typedef scalar_t__ ngx_buf_tag_t ;
struct TYPE_33__ {int last_shadow; struct TYPE_33__* shadow; int last; int pos; scalar_t__ last_in_chain; scalar_t__ last_buf; scalar_t__ tag; int * start; } ;
typedef TYPE_12__ ngx_buf_t ;
struct TYPE_34__ {TYPE_10__* connection; } ;
struct TYPE_36__ {int writer; int multi; TYPE_1__ peer; } ;
struct TYPE_35__ {int pool; } ;


 int NGX_ERROR ;
 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int ngx_add_timer (int *,int ) ;
 TYPE_11__* ngx_chain_get_free_buf (int ,TYPE_11__**) ;
 int ngx_chain_update_chains (int ,TYPE_11__**,int *,TYPE_11__**,scalar_t__) ;
 int ngx_chain_writer (int *,TYPE_11__*) ;
 TYPE_5__* ngx_get_multi_connection (TYPE_10__*) ;
 scalar_t__ ngx_http_dubbo_create_dubbo_request (TYPE_6__*,TYPE_10__*,TYPE_4__**,TYPE_11__*) ;
 TYPE_8__* ngx_http_dubbo_get_ctx (TYPE_6__*) ;
 int ngx_http_dubbo_module ;
 TYPE_7__* ngx_http_get_module_loc_conf (TYPE_6__*,int ) ;
 int ngx_log_error (int ,int ,int ,char*,...) ;
 int ngx_memcpy (TYPE_12__*,TYPE_12__*,int) ;
 int * ngx_pcalloc (int ,int) ;
 int ngx_queue_init (int *) ;
 int ngx_queue_insert_head (int *,int *) ;
 int ngx_queue_insert_tail (int *,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_dubbo_body_output_filter(void *data, ngx_chain_t *in)
{
    ngx_http_request_t *r = data;
    ngx_connection_t *pc = r->upstream->peer.connection;
    ngx_http_request_t *fake_r = pc->data;
    ngx_chain_t *out, *cl, **ll, *tmp;
    ngx_multi_request_t *multi_r;
    ngx_buf_t *b;
    u_char *start;
    ngx_int_t rc;
    ngx_multi_connection_t *multi_c;
    ngx_dubbo_connection_t *dubbo_c;
    ngx_http_dubbo_loc_conf_t *dlcf;

    ngx_http_dubbo_ctx_t *ctx = ngx_http_dubbo_get_ctx(fake_r);

    if (!r->upstream->multi) {
        ngx_log_error(NGX_LOG_ERR, pc->log, 0, "dubbo: only support upstream multi module");
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    multi_c = ngx_get_multi_connection(pc);
    dubbo_c = ctx->connection;

    dlcf = ngx_http_get_module_loc_conf(r, ngx_http_dubbo_module);

    if (r == fake_r && in != ((void*)0)) {
        ngx_log_error(NGX_LOG_ERR, pc->log, 0, "dubbo: body output failed %p, %p", pc, r);

        return NGX_ERROR;
    }

    out = ((void*)0);
    ll = &out;

    if (ctx->out) {

        *ll = ctx->out;

        for (cl = ctx->out, ll = &cl->next; cl; cl = cl->next) {
            ll = &cl->next;
        }

        ctx->out = ((void*)0);
    }

    if (r != fake_r) {

        if (NGX_OK != ngx_http_dubbo_create_dubbo_request(r, pc, &multi_r, in)) {
            ngx_log_error(NGX_LOG_ERR, pc->log, 0, "dubbo: http create request failed %p, %p", pc, r);
            return NGX_ERROR;
        }

        for (cl = multi_r->out; cl; cl = cl->next) {
            tmp = ngx_chain_get_free_buf(fake_r->pool, &ctx->free);
            if (tmp == ((void*)0)) {
                return NGX_ERROR;
            }

            b = tmp->buf;
            start = b->start;

            ngx_memcpy(b, cl->buf, sizeof(ngx_buf_t));






            b->start = start;

            b->tag = (ngx_buf_tag_t) &ngx_http_dubbo_body_output_filter;
            b->shadow = cl->buf;
            b->last_shadow = 1;

            b->last_buf = 0;
            b->last_in_chain = 0;

            *ll = tmp;
            ll = &tmp->next;
        }

        ngx_queue_insert_head(&multi_c->send_list, &multi_r->backend_queue);


        if (r->backend_r == ((void*)0)) {
            r->backend_r = ngx_pcalloc(r->connection->pool, sizeof(ngx_queue_t));
            if (r->backend_r == ((void*)0)) {
                return NGX_ERROR;
            }

            ngx_queue_init(r->backend_r);
        }


        ngx_queue_insert_tail(r->backend_r, &multi_r->front_queue);
    }

    rc = ngx_chain_writer(&fake_r->upstream->writer, out);

    ngx_chain_update_chains(fake_r->pool, &ctx->free, &ctx->busy, &out,
            (ngx_buf_tag_t) &ngx_http_dubbo_body_output_filter);

    for (cl = ctx->free; cl; cl = cl->next) {


        if (cl->buf->shadow) {
            if (cl->buf->last_shadow) {
                b = cl->buf->shadow;
                b->pos = b->last;
            }

            cl->buf->shadow = ((void*)0);
        }
    }

    ngx_add_timer(&dubbo_c->ping_event, dlcf->heartbeat_interval);

    return rc;
}

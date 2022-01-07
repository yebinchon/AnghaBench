
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_20__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_17__ ;


struct TYPE_22__ {TYPE_5__* connection; } ;
typedef TYPE_1__ ngx_stream_session_t ;
struct TYPE_24__ {int text; } ;
typedef TYPE_2__ ngx_stream_return_srv_conf_t ;
struct TYPE_25__ {TYPE_20__* out; } ;
typedef TYPE_3__ ngx_stream_return_ctx_t ;
struct TYPE_26__ {scalar_t__ len; scalar_t__ data; } ;
typedef TYPE_4__ ngx_str_t ;
struct TYPE_27__ {TYPE_9__* write; int pool; TYPE_17__* log; } ;
typedef TYPE_5__ ngx_connection_t ;
struct TYPE_28__ {int memory; scalar_t__ pos; scalar_t__ last; int last_buf; } ;
typedef TYPE_6__ ngx_buf_t ;
struct TYPE_29__ {int (* handler ) (TYPE_9__*) ;} ;
struct TYPE_23__ {int * next; TYPE_6__* buf; } ;
struct TYPE_21__ {char* action; } ;


 int NGX_LOG_DEBUG_STREAM ;
 scalar_t__ NGX_OK ;
 int NGX_STREAM_INTERNAL_SERVER_ERROR ;
 int NGX_STREAM_OK ;
 TYPE_20__* ngx_alloc_chain_link (int ) ;
 TYPE_6__* ngx_calloc_buf (int ) ;
 int ngx_log_debug1 (int ,TYPE_17__*,int ,char*,TYPE_4__*) ;
 TYPE_3__* ngx_pcalloc (int ,int) ;
 scalar_t__ ngx_stream_complex_value (TYPE_1__*,int *,TYPE_4__*) ;
 int ngx_stream_finalize_session (TYPE_1__*,int ) ;
 TYPE_2__* ngx_stream_get_module_srv_conf (TYPE_1__*,int ) ;
 int ngx_stream_return_module ;
 int ngx_stream_return_write_handler (TYPE_9__*) ;
 int ngx_stream_set_ctx (TYPE_1__*,TYPE_3__*,int ) ;

__attribute__((used)) static void
ngx_stream_return_handler(ngx_stream_session_t *s)
{
    ngx_str_t text;
    ngx_buf_t *b;
    ngx_connection_t *c;
    ngx_stream_return_ctx_t *ctx;
    ngx_stream_return_srv_conf_t *rscf;

    c = s->connection;

    c->log->action = "returning text";

    rscf = ngx_stream_get_module_srv_conf(s, ngx_stream_return_module);

    if (ngx_stream_complex_value(s, &rscf->text, &text) != NGX_OK) {
        ngx_stream_finalize_session(s, NGX_STREAM_INTERNAL_SERVER_ERROR);
        return;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_STREAM, c->log, 0,
                   "stream return text: \"%V\"", &text);

    if (text.len == 0) {
        ngx_stream_finalize_session(s, NGX_STREAM_OK);
        return;
    }

    ctx = ngx_pcalloc(c->pool, sizeof(ngx_stream_return_ctx_t));
    if (ctx == ((void*)0)) {
        ngx_stream_finalize_session(s, NGX_STREAM_INTERNAL_SERVER_ERROR);
        return;
    }

    ngx_stream_set_ctx(s, ctx, ngx_stream_return_module);

    b = ngx_calloc_buf(c->pool);
    if (b == ((void*)0)) {
        ngx_stream_finalize_session(s, NGX_STREAM_INTERNAL_SERVER_ERROR);
        return;
    }

    b->memory = 1;
    b->pos = text.data;
    b->last = text.data + text.len;
    b->last_buf = 1;

    ctx->out = ngx_alloc_chain_link(c->pool);
    if (ctx->out == ((void*)0)) {
        ngx_stream_finalize_session(s, NGX_STREAM_INTERNAL_SERVER_ERROR);
        return;
    }

    ctx->out->buf = b;
    ctx->out->next = ((void*)0);

    c->write->handler = ngx_stream_return_write_handler;

    ngx_stream_return_write_handler(c->write);
}

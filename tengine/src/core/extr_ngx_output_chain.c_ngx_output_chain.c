
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_12__ ;
typedef struct TYPE_26__ TYPE_10__ ;


typedef scalar_t__ off_t ;
struct TYPE_28__ {scalar_t__ num; } ;
struct TYPE_29__ {scalar_t__ (* output_filter ) (int ,TYPE_3__*) ;scalar_t__ allocated; int tag; int * busy; TYPE_3__* free; TYPE_12__* pool; int filter_ctx; TYPE_3__* in; TYPE_10__* buf; TYPE_1__ bufs; scalar_t__ aio; } ;
typedef TYPE_2__ ngx_output_chain_ctx_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_30__ {struct TYPE_30__* next; TYPE_10__* buf; } ;
typedef TYPE_3__ ngx_chain_t ;
struct TYPE_27__ {int log; } ;
struct TYPE_26__ {scalar_t__ file_last; int file_pos; int file; int last; int pos; int start; scalar_t__ in_file; int recycled; int temporary; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_ALERT ;
 scalar_t__ NGX_NONE ;
 scalar_t__ NGX_OK ;
 scalar_t__ NGX_SENDFILE_LIMIT ;
 TYPE_3__* ngx_alloc_chain_link (TYPE_12__*) ;
 scalar_t__ ngx_buf_size (TYPE_10__*) ;
 int ngx_buf_special (TYPE_10__*) ;
 int ngx_chain_update_chains (TYPE_12__*,TYPE_3__**,int **,TYPE_3__**,int ) ;
 int ngx_debug_point () ;
 int ngx_free_chain (TYPE_12__*,TYPE_3__*) ;
 int ngx_log_error (int ,int ,int ,char*,int ,int ,scalar_t__,int ,int ,int ,int ,int ,scalar_t__) ;
 scalar_t__ ngx_output_chain_add_copy (TYPE_12__*,TYPE_3__**,TYPE_3__*) ;
 scalar_t__ ngx_output_chain_align_file_buf (TYPE_2__*,scalar_t__) ;
 scalar_t__ ngx_output_chain_as_is (TYPE_2__*,TYPE_10__*) ;
 scalar_t__ ngx_output_chain_copy_buf (TYPE_2__*) ;
 scalar_t__ ngx_output_chain_get_buf (TYPE_2__*,scalar_t__) ;
 scalar_t__ stub1 (int ,TYPE_3__*) ;
 scalar_t__ stub2 (int ,TYPE_3__*) ;
 scalar_t__ stub3 (int ,TYPE_3__*) ;

ngx_int_t
ngx_output_chain(ngx_output_chain_ctx_t *ctx, ngx_chain_t *in)
{
    off_t bsize;
    ngx_int_t rc, last;
    ngx_chain_t *cl, *out, **last_out;

    if (ctx->in == ((void*)0) && ctx->busy == ((void*)0)



       )
    {






        if (in == ((void*)0)) {
            return ctx->output_filter(ctx->filter_ctx, in);
        }

        if (in->next == ((void*)0)



            && ngx_output_chain_as_is(ctx, in->buf))
        {
            return ctx->output_filter(ctx->filter_ctx, in);
        }
    }



    if (in) {
        if (ngx_output_chain_add_copy(ctx->pool, &ctx->in, in) == NGX_ERROR) {
            return NGX_ERROR;
        }
    }

    out = ((void*)0);
    last_out = &out;
    last = NGX_NONE;

    for ( ;; ) {







        while (ctx->in) {






            bsize = ngx_buf_size(ctx->in->buf);

            if (bsize == 0 && !ngx_buf_special(ctx->in->buf)) {

                ngx_log_error(NGX_LOG_ALERT, ctx->pool->log, 0,
                              "zero size buf in output "
                              "t:%d r:%d f:%d %p %p-%p %p %O-%O",
                              ctx->in->buf->temporary,
                              ctx->in->buf->recycled,
                              ctx->in->buf->in_file,
                              ctx->in->buf->start,
                              ctx->in->buf->pos,
                              ctx->in->buf->last,
                              ctx->in->buf->file,
                              ctx->in->buf->file_pos,
                              ctx->in->buf->file_last);

                ngx_debug_point();

                ctx->in = ctx->in->next;

                continue;
            }

            if (bsize < 0) {

                ngx_log_error(NGX_LOG_ALERT, ctx->pool->log, 0,
                              "negative size buf in output "
                              "t:%d r:%d f:%d %p %p-%p %p %O-%O",
                              ctx->in->buf->temporary,
                              ctx->in->buf->recycled,
                              ctx->in->buf->in_file,
                              ctx->in->buf->start,
                              ctx->in->buf->pos,
                              ctx->in->buf->last,
                              ctx->in->buf->file,
                              ctx->in->buf->file_pos,
                              ctx->in->buf->file_last);

                ngx_debug_point();

                return NGX_ERROR;
            }

            if (ngx_output_chain_as_is(ctx, ctx->in->buf)) {



                cl = ctx->in;
                ctx->in = cl->next;

                *last_out = cl;
                last_out = &cl->next;
                cl->next = ((void*)0);

                continue;
            }

            if (ctx->buf == ((void*)0)) {

                rc = ngx_output_chain_align_file_buf(ctx, bsize);

                if (rc == NGX_ERROR) {
                    return NGX_ERROR;
                }

                if (rc != NGX_OK) {

                    if (ctx->free) {



                        cl = ctx->free;
                        ctx->buf = cl->buf;
                        ctx->free = cl->next;

                        ngx_free_chain(ctx->pool, cl);

                    } else if (out || ctx->allocated == ctx->bufs.num) {

                        break;

                    } else if (ngx_output_chain_get_buf(ctx, bsize) != NGX_OK) {
                        return NGX_ERROR;
                    }
                }
            }

            rc = ngx_output_chain_copy_buf(ctx);

            if (rc == NGX_ERROR) {
                return rc;
            }

            if (rc == NGX_AGAIN) {
                if (out) {
                    break;
                }

                return rc;
            }



            if (ngx_buf_size(ctx->in->buf) == 0) {
                ctx->in = ctx->in->next;
            }

            cl = ngx_alloc_chain_link(ctx->pool);
            if (cl == ((void*)0)) {
                return NGX_ERROR;
            }

            cl->buf = ctx->buf;
            cl->next = ((void*)0);
            *last_out = cl;
            last_out = &cl->next;
            ctx->buf = ((void*)0);
        }

        if (out == ((void*)0) && last != NGX_NONE) {

            if (ctx->in) {
                return NGX_AGAIN;
            }

            return last;
        }

        last = ctx->output_filter(ctx->filter_ctx, out);

        if (last == NGX_ERROR || last == NGX_DONE) {
            return last;
        }

        ngx_chain_update_chains(ctx->pool, &ctx->free, &ctx->busy, &out,
                                ctx->tag);
        last_out = &out;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_49__ TYPE_9__ ;
typedef struct TYPE_48__ TYPE_8__ ;
typedef struct TYPE_47__ TYPE_7__ ;
typedef struct TYPE_46__ TYPE_6__ ;
typedef struct TYPE_45__ TYPE_5__ ;
typedef struct TYPE_44__ TYPE_4__ ;
typedef struct TYPE_43__ TYPE_3__ ;
typedef struct TYPE_42__ TYPE_2__ ;
typedef struct TYPE_41__ TYPE_1__ ;
typedef struct TYPE_40__ TYPE_11__ ;
typedef struct TYPE_39__ TYPE_10__ ;


typedef int u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_44__ {int len; int data; } ;
typedef TYPE_4__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_39__ {struct TYPE_39__* next; TYPE_11__* buf; } ;
struct TYPE_45__ {size_t key; TYPE_10__ value; TYPE_4__ name; } ;
typedef TYPE_5__ ngx_http_ssi_var_t ;
struct TYPE_46__ {TYPE_8__* wait; int * variables; TYPE_10__* free; TYPE_1__* blocks; } ;
typedef TYPE_6__ ngx_http_ssi_ctx_t ;
struct TYPE_42__ {scalar_t__ len; int data; } ;
struct TYPE_47__ {TYPE_10__* bufs; int count; TYPE_2__ name; } ;
typedef TYPE_7__ ngx_http_ssi_block_t ;
struct TYPE_48__ {TYPE_3__* connection; int pool; int main; } ;
typedef TYPE_8__ ngx_http_request_t ;
struct TYPE_49__ {TYPE_10__* data; int handler; } ;
typedef TYPE_9__ ngx_http_post_subrequest_t ;
typedef TYPE_10__ ngx_chain_t ;
struct TYPE_40__ {int start; int pos; } ;
typedef TYPE_11__ ngx_buf_t ;
struct TYPE_43__ {int log; } ;
struct TYPE_41__ {size_t nelts; TYPE_7__* elts; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_ERROR ;
 size_t NGX_HTTP_LOG_UNSAFE ;
 int NGX_HTTP_SSI_ADD_PREFIX ;
 scalar_t__ NGX_HTTP_SSI_ERROR ;
 size_t NGX_HTTP_SSI_INCLUDE_FILE ;
 size_t NGX_HTTP_SSI_INCLUDE_SET ;
 size_t NGX_HTTP_SSI_INCLUDE_STUB ;
 size_t NGX_HTTP_SSI_INCLUDE_VIRTUAL ;
 size_t NGX_HTTP_SSI_INCLUDE_WAIT ;
 size_t NGX_HTTP_SUBREQUEST_IN_MEMORY ;
 size_t NGX_HTTP_SUBREQUEST_WAITED ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 TYPE_11__* ngx_alloc_buf (int ) ;
 TYPE_10__* ngx_alloc_chain_link (int ) ;
 size_t ngx_hash_strlow (int ,int ,scalar_t__) ;
 TYPE_6__* ngx_http_get_module_ctx (int ,int ) ;
 scalar_t__ ngx_http_parse_unsafe_uri (TYPE_8__*,TYPE_4__*,TYPE_4__*,size_t*) ;
 scalar_t__ ngx_http_ssi_evaluate_string (TYPE_8__*,TYPE_6__*,TYPE_4__*,int ) ;
 int ngx_http_ssi_filter_module ;
 TYPE_10__* ngx_http_ssi_get_variable (TYPE_8__*,TYPE_4__*,size_t) ;
 TYPE_10__ ngx_http_ssi_null_string ;
 int ngx_http_ssi_set_variable ;
 int ngx_http_ssi_stub_output ;
 scalar_t__ ngx_http_subrequest (TYPE_8__*,TYPE_4__*,TYPE_4__*,TYPE_8__**,TYPE_9__*,size_t) ;
 int * ngx_list_create (int ,int,int) ;
 TYPE_5__* ngx_list_push (int *) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_4__*) ;
 int ngx_log_error (int ,int ,int ,char*,...) ;
 int ngx_memcpy (TYPE_11__*,TYPE_11__*,int) ;
 TYPE_9__* ngx_palloc (int ,int) ;
 int ngx_str_null (TYPE_4__*) ;
 scalar_t__ ngx_strncasecmp (int ,int *,int) ;
 scalar_t__ ngx_strncmp (int ,int ,scalar_t__) ;

__attribute__((used)) static ngx_int_t
ngx_http_ssi_include(ngx_http_request_t *r, ngx_http_ssi_ctx_t *ctx,
    ngx_str_t **params)
{
    ngx_int_t rc;
    ngx_str_t *uri, *file, *wait, *set, *stub, args;
    ngx_buf_t *b;
    ngx_uint_t flags, i, key;
    ngx_chain_t *cl, *tl, **ll, *out;
    ngx_http_request_t *sr;
    ngx_http_ssi_var_t *var;
    ngx_http_ssi_ctx_t *mctx;
    ngx_http_ssi_block_t *bl;
    ngx_http_post_subrequest_t *psr;

    uri = params[NGX_HTTP_SSI_INCLUDE_VIRTUAL];
    file = params[NGX_HTTP_SSI_INCLUDE_FILE];
    wait = params[NGX_HTTP_SSI_INCLUDE_WAIT];
    set = params[NGX_HTTP_SSI_INCLUDE_SET];
    stub = params[NGX_HTTP_SSI_INCLUDE_STUB];

    if (uri && file) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "inclusion may be either virtual=\"%V\" or file=\"%V\"",
                      uri, file);
        return NGX_HTTP_SSI_ERROR;
    }

    if (uri == ((void*)0) && file == ((void*)0)) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "no parameter in \"include\" SSI command");
        return NGX_HTTP_SSI_ERROR;
    }

    if (set && stub) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "\"set\" and \"stub\" cannot be used together "
                      "in \"include\" SSI command");
        return NGX_HTTP_SSI_ERROR;
    }

    if (wait) {
        if (uri == ((void*)0)) {
            ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                          "\"wait\" cannot be used with file=\"%V\"", file);
            return NGX_HTTP_SSI_ERROR;
        }

        if (wait->len == 2
            && ngx_strncasecmp(wait->data, (u_char *) "no", 2) == 0)
        {
            wait = ((void*)0);

        } else if (wait->len != 3
                   || ngx_strncasecmp(wait->data, (u_char *) "yes", 3) != 0)
        {
            ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                          "invalid value \"%V\" in the \"wait\" parameter",
                          wait);
            return NGX_HTTP_SSI_ERROR;
        }
    }

    if (uri == ((void*)0)) {
        uri = file;
        wait = (ngx_str_t *) -1;
    }

    rc = ngx_http_ssi_evaluate_string(r, ctx, uri, NGX_HTTP_SSI_ADD_PREFIX);

    if (rc != NGX_OK) {
        return rc;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "ssi include: \"%V\"", uri);

    ngx_str_null(&args);
    flags = NGX_HTTP_LOG_UNSAFE;

    if (ngx_http_parse_unsafe_uri(r, uri, &args, &flags) != NGX_OK) {
        return NGX_HTTP_SSI_ERROR;
    }

    psr = ((void*)0);

    mctx = ngx_http_get_module_ctx(r->main, ngx_http_ssi_filter_module);

    if (stub) {
        if (mctx->blocks) {
            bl = mctx->blocks->elts;
            for (i = 0; i < mctx->blocks->nelts; i++) {
                if (stub->len == bl[i].name.len
                    && ngx_strncmp(stub->data, bl[i].name.data, stub->len) == 0)
                {
                    goto found;
                }
            }
        }

        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "\"stub\"=\"%V\" for \"include\" not found", stub);
        return NGX_HTTP_SSI_ERROR;

    found:

        psr = ngx_palloc(r->pool, sizeof(ngx_http_post_subrequest_t));
        if (psr == ((void*)0)) {
            return NGX_ERROR;
        }

        psr->handler = ngx_http_ssi_stub_output;

        if (bl[i].count++) {

            out = ((void*)0);
            ll = &out;

            for (tl = bl[i].bufs; tl; tl = tl->next) {

                if (ctx->free) {
                    cl = ctx->free;
                    ctx->free = ctx->free->next;
                    b = cl->buf;

                } else {
                    b = ngx_alloc_buf(r->pool);
                    if (b == ((void*)0)) {
                        return NGX_ERROR;
                    }

                    cl = ngx_alloc_chain_link(r->pool);
                    if (cl == ((void*)0)) {
                        return NGX_ERROR;
                    }

                    cl->buf = b;
                }

                ngx_memcpy(b, tl->buf, sizeof(ngx_buf_t));

                b->pos = b->start;

                *ll = cl;
                cl->next = ((void*)0);
                ll = &cl->next;
            }

            psr->data = out;

        } else {
            psr->data = bl[i].bufs;
        }
    }

    if (wait) {
        flags |= NGX_HTTP_SUBREQUEST_WAITED;
    }

    if (set) {
        key = ngx_hash_strlow(set->data, set->data, set->len);

        psr = ngx_palloc(r->pool, sizeof(ngx_http_post_subrequest_t));
        if (psr == ((void*)0)) {
            return NGX_ERROR;
        }

        psr->handler = ngx_http_ssi_set_variable;
        psr->data = ngx_http_ssi_get_variable(r, set, key);

        if (psr->data == ((void*)0)) {

            if (mctx->variables == ((void*)0)) {
                mctx->variables = ngx_list_create(r->pool, 4,
                                                  sizeof(ngx_http_ssi_var_t));
                if (mctx->variables == ((void*)0)) {
                    return NGX_ERROR;
                }
            }

            var = ngx_list_push(mctx->variables);
            if (var == ((void*)0)) {
                return NGX_ERROR;
            }

            var->name = *set;
            var->key = key;
            var->value = ngx_http_ssi_null_string;
            psr->data = &var->value;
        }

        flags |= NGX_HTTP_SUBREQUEST_IN_MEMORY|NGX_HTTP_SUBREQUEST_WAITED;
    }

    if (ngx_http_subrequest(r, uri, &args, &sr, psr, flags) != NGX_OK) {
        return NGX_HTTP_SSI_ERROR;
    }

    if (wait == ((void*)0) && set == ((void*)0)) {
        return NGX_OK;
    }

    if (ctx->wait == ((void*)0)) {
        ctx->wait = sr;

        return NGX_AGAIN;

    } else {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "can only wait for one subrequest at a time");
    }

    return NGX_OK;
}

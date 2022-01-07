
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_12__ {char* data; long len; } ;
struct TYPE_16__ {TYPE_1__ value; } ;
typedef TYPE_5__ ngx_table_elt_t ;
typedef int ngx_int_t ;
struct TYPE_15__ {int len; char* data; } ;
struct TYPE_17__ {TYPE_4__ sid; TYPE_3__* sscf; } ;
typedef TYPE_6__ ngx_http_ss_ctx_t ;
struct TYPE_18__ {int pool; } ;
typedef TYPE_7__ ngx_http_request_t ;
struct TYPE_13__ {char* data; int len; } ;
struct TYPE_14__ {TYPE_2__ cookie; } ;


 int NGX_AGAIN ;
 int NGX_ERROR ;
 int NGX_OK ;
 int is_space (char) ;
 char* ngx_cpymem (char*,char*,int) ;
 TYPE_6__* ngx_http_get_module_ctx (TYPE_7__*,int ) ;
 int ngx_http_upstream_session_sticky_module ;
 char* ngx_pnalloc (int ,int) ;
 char* ngx_strlcasestrn (char*,char*,char*,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_session_sticky_rewrite(ngx_http_request_t *r, ngx_table_elt_t *table)
{
    u_char *p, *st, *en, *last, *start;
    ngx_http_ss_ctx_t *ctx;
    enum {
        pre_equal = 0,
        pre_value,
        value
    } state;

    ctx = ngx_http_get_module_ctx(r, ngx_http_upstream_session_sticky_module);
    p = ngx_strlcasestrn(table->value.data,
                         table->value.data + table->value.len,
                         ctx->sscf->cookie.data,
                         ctx->sscf->cookie.len - 1);
    if (p == ((void*)0)) {
        return NGX_AGAIN;
    }

    st = p;
    start = table->value.data;
    last = table->value.data + table->value.len;

    state = 0;
    while (p < last) {
        switch (state) {
        case pre_equal:
            if (*p == '=') {
                state = pre_value;

            } else if (*p == ';') {
                goto success;
            }

            break;

        case pre_value:
            if (!is_space(*p)) {
                state = value;
                p--;
            }
            break;

        case value:
            if (*p == ';') {
                goto success;
            }
            break;

        default:
            break;
        }

        p++;
    }

    if (p >= last && (state == value || state == pre_equal)) {
        goto success;
    }

    return NGX_AGAIN;

success:

    en = p;
    table->value.len = table->value.len
                     - (en - st)
                     + ctx->sscf->cookie.len
                     + 1
                     + ctx->sid.len;

    p = ngx_pnalloc(r->pool, table->value.len);
    if (p == ((void*)0)) {
        return NGX_ERROR;
    }

    table->value.data = p;
    p = ngx_cpymem(p, start, st - start);
    p = ngx_cpymem(p, ctx->sscf->cookie.data, ctx->sscf->cookie.len);
    *p++ = '=';
    p = ngx_cpymem(p, ctx->sid.data, ctx->sid.len);
    p = ngx_cpymem(p, en, last - en);

    return NGX_OK;
}

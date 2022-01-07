
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ time_t ;
struct TYPE_27__ {int len; int * data; } ;
typedef TYPE_4__ ngx_str_t ;
typedef int ngx_md5_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_28__ {int len; int valid; int not_found; scalar_t__ no_cacheable; int * data; } ;
typedef TYPE_5__ ngx_http_variable_value_t ;
struct TYPE_25__ {int len; int * data; } ;
struct TYPE_29__ {TYPE_2__ expires; } ;
typedef TYPE_6__ ngx_http_secure_link_ctx_t ;
struct TYPE_24__ {scalar_t__ data; } ;
struct TYPE_30__ {int * md5; int * variable; TYPE_1__ secret; } ;
typedef TYPE_7__ ngx_http_secure_link_conf_t ;
struct TYPE_31__ {TYPE_3__* connection; int pool; } ;
typedef TYPE_8__ ngx_http_request_t ;
struct TYPE_26__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_atotm (int *,int) ;
 scalar_t__ ngx_decode_base64url (TYPE_4__*,TYPE_4__*) ;
 scalar_t__ ngx_http_complex_value (TYPE_8__*,int *,TYPE_4__*) ;
 TYPE_7__* ngx_http_get_module_loc_conf (TYPE_8__*,int ) ;
 int ngx_http_secure_link_module ;
 scalar_t__ ngx_http_secure_link_old_variable (TYPE_8__*,TYPE_7__*,TYPE_5__*,uintptr_t) ;
 int ngx_http_set_ctx (TYPE_8__*,TYPE_6__*,int ) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_4__*) ;
 int ngx_md5_final (int *,int *) ;
 int ngx_md5_init (int *) ;
 int ngx_md5_update (int *,int *,int) ;
 scalar_t__ ngx_memcmp (int *,int *,int) ;
 TYPE_6__* ngx_pcalloc (int ,int) ;
 int * ngx_strlchr (int *,int *,char) ;
 scalar_t__ ngx_time () ;

__attribute__((used)) static ngx_int_t
ngx_http_secure_link_variable(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    u_char *p, *last;
    ngx_str_t val, hash;
    time_t expires;
    ngx_md5_t md5;
    ngx_http_secure_link_ctx_t *ctx;
    ngx_http_secure_link_conf_t *conf;
    u_char hash_buf[18], md5_buf[16];

    conf = ngx_http_get_module_loc_conf(r, ngx_http_secure_link_module);

    if (conf->secret.data) {
        return ngx_http_secure_link_old_variable(r, conf, v, data);
    }

    if (conf->variable == ((void*)0) || conf->md5 == ((void*)0)) {
        goto not_found;
    }

    if (ngx_http_complex_value(r, conf->variable, &val) != NGX_OK) {
        return NGX_ERROR;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "secure link: \"%V\"", &val);

    last = val.data + val.len;

    p = ngx_strlchr(val.data, last, ',');
    expires = 0;

    if (p) {
        val.len = p++ - val.data;

        expires = ngx_atotm(p, last - p);
        if (expires <= 0) {
            goto not_found;
        }

        ctx = ngx_pcalloc(r->pool, sizeof(ngx_http_secure_link_ctx_t));
        if (ctx == ((void*)0)) {
            return NGX_ERROR;
        }

        ngx_http_set_ctx(r, ctx, ngx_http_secure_link_module);

        ctx->expires.len = last - p;
        ctx->expires.data = p;
    }

    if (val.len > 24) {
        goto not_found;
    }

    hash.data = hash_buf;

    if (ngx_decode_base64url(&hash, &val) != NGX_OK) {
        goto not_found;
    }

    if (hash.len != 16) {
        goto not_found;
    }

    if (ngx_http_complex_value(r, conf->md5, &val) != NGX_OK) {
        return NGX_ERROR;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "secure link md5: \"%V\"", &val);

    ngx_md5_init(&md5);
    ngx_md5_update(&md5, val.data, val.len);
    ngx_md5_final(md5_buf, &md5);

    if (ngx_memcmp(hash_buf, md5_buf, 16) != 0) {
        goto not_found;
    }

    v->data = (u_char *) ((expires && expires < ngx_time()) ? "0" : "1");
    v->len = 1;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    return NGX_OK;

not_found:

    v->not_found = 1;

    return NGX_OK;
}

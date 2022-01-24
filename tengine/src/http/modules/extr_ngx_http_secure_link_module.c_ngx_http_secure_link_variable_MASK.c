#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ time_t ;
struct TYPE_27__ {int len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_4__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_md5_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_28__ {int len; int valid; int not_found; scalar_t__ no_cacheable; int /*<<< orphan*/ * data; } ;
typedef  TYPE_5__ ngx_http_variable_value_t ;
struct TYPE_25__ {int len; int /*<<< orphan*/ * data; } ;
struct TYPE_29__ {TYPE_2__ expires; } ;
typedef  TYPE_6__ ngx_http_secure_link_ctx_t ;
struct TYPE_24__ {scalar_t__ data; } ;
struct TYPE_30__ {int /*<<< orphan*/ * md5; int /*<<< orphan*/ * variable; TYPE_1__ secret; } ;
typedef  TYPE_7__ ngx_http_secure_link_conf_t ;
struct TYPE_31__ {TYPE_3__* connection; int /*<<< orphan*/  pool; } ;
typedef  TYPE_8__ ngx_http_request_t ;
struct TYPE_26__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (TYPE_4__*,TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_8__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_7__* FUNC3 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_secure_link_module ; 
 scalar_t__ FUNC4 (TYPE_8__*,TYPE_7__*,TYPE_5__*,uintptr_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_6__* FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC13 () ; 

__attribute__((used)) static ngx_int_t
FUNC14(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    u_char                       *p, *last;
    ngx_str_t                     val, hash;
    time_t                        expires;
    ngx_md5_t                     md5;
    ngx_http_secure_link_ctx_t   *ctx;
    ngx_http_secure_link_conf_t  *conf;
    u_char                        hash_buf[18], md5_buf[16];

    conf = FUNC3(r, ngx_http_secure_link_module);

    if (conf->secret.data) {
        return FUNC4(r, conf, v, data);
    }

    if (conf->variable == NULL || conf->md5 == NULL) {
        goto not_found;
    }

    if (FUNC2(r, conf->variable, &val) != NGX_OK) {
        return NGX_ERROR;
    }

    FUNC6(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "secure link: \"%V\"", &val);

    last = val.data + val.len;

    p = FUNC12(val.data, last, ',');
    expires = 0;

    if (p) {
        val.len = p++ - val.data;

        expires = FUNC0(p, last - p);
        if (expires <= 0) {
            goto not_found;
        }

        ctx = FUNC11(r->pool, sizeof(ngx_http_secure_link_ctx_t));
        if (ctx == NULL) {
            return NGX_ERROR;
        }

        FUNC5(r, ctx, ngx_http_secure_link_module);

        ctx->expires.len = last - p;
        ctx->expires.data = p;
    }

    if (val.len > 24) {
        goto not_found;
    }

    hash.data = hash_buf;

    if (FUNC1(&hash, &val) != NGX_OK) {
        goto not_found;
    }

    if (hash.len != 16) {
        goto not_found;
    }

    if (FUNC2(r, conf->md5, &val) != NGX_OK) {
        return NGX_ERROR;
    }

    FUNC6(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "secure link md5: \"%V\"", &val);

    FUNC8(&md5);
    FUNC9(&md5, val.data, val.len);
    FUNC7(md5_buf, &md5);

    if (FUNC10(hash_buf, md5_buf, 16) != 0) {
        goto not_found;
    }

    v->data = (u_char *) ((expires && expires < FUNC13()) ? "0" : "1");
    v->len = 1;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    return NGX_OK;

not_found:

    v->not_found = 1;

    return NGX_OK;
}
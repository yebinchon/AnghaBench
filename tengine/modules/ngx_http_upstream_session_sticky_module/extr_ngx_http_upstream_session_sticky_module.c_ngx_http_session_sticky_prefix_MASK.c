#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
struct TYPE_15__ {char* data; int len; } ;
struct TYPE_16__ {TYPE_4__ value; } ;
typedef  TYPE_5__ ngx_table_elt_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_14__ {int len; char* data; } ;
struct TYPE_17__ {TYPE_3__ sid; TYPE_2__* sscf; } ;
typedef  TYPE_6__ ngx_http_ss_ctx_t ;
struct TYPE_18__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_7__ ngx_http_request_t ;
struct TYPE_12__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_13__ {TYPE_1__ cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_AGAIN ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 char* FUNC1 (char*,char*,int) ; 
 TYPE_6__* FUNC2 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_upstream_session_sticky_module ; 
 char* FUNC3 (int /*<<< orphan*/ ,int) ; 
 char* FUNC4 (char*,char*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static ngx_int_t
FUNC5(ngx_http_request_t *r, ngx_table_elt_t *table)
{
    u_char             *p, *s, *t, *last;
    ngx_http_ss_ctx_t  *ctx;
    enum {
        pre_equal = 0,
        pre_value
    } state;

    ctx = FUNC2(r, ngx_http_upstream_session_sticky_module);
    p = FUNC4(table->value.data,
                         table->value.data + table->value.len,
                         ctx->sscf->cookie.data,
                         ctx->sscf->cookie.len - 1);
    if (p == NULL) {
        return NGX_AGAIN;
    }

    last = table->value.data + table->value.len;
    state = 0;
    p += ctx->sscf->cookie.len;
    while (p < last) {
        switch (state) {
        case pre_equal:
            if (*p == '=') {
                state = pre_value;
            }
            break;

        case pre_value:
            if (*p == ';') {
                goto success;
            } else if (!FUNC0(*p)) {
                goto success;
            }
            break;

        default:
            break;
        }

        p++;
    }

    return NGX_AGAIN;

success:

    table->value.len += ctx->sid.len + 1;
    s = FUNC3(r->pool, table->value.len);
    if (s == NULL) {
        return NGX_ERROR;
    }

    t = s;
    t = FUNC1(t, table->value.data, p - table->value.data);
    t = FUNC1(t, ctx->sid.data, ctx->sid.len);
    *t++ = '~';
    t = FUNC1(t, p, last - p);

    table->value.data = s;

    return NGX_OK;
}
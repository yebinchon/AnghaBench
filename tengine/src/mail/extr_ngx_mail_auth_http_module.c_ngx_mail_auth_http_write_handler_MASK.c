#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  ngx_mail_session_t ;
struct TYPE_15__ {int /*<<< orphan*/  name; } ;
struct TYPE_17__ {int /*<<< orphan*/  pool; TYPE_2__* request; TYPE_1__ peer; } ;
typedef  TYPE_3__ ngx_mail_auth_http_ctx_t ;
struct TYPE_18__ {int /*<<< orphan*/  timeout; } ;
typedef  TYPE_4__ ngx_mail_auth_http_conf_t ;
struct TYPE_19__ {scalar_t__ timer_set; int /*<<< orphan*/  handler; int /*<<< orphan*/  log; scalar_t__ timedout; TYPE_6__* data; } ;
typedef  TYPE_5__ ngx_event_t ;
struct TYPE_20__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_6__ ngx_connection_t ;
struct TYPE_16__ {scalar_t__ last; scalar_t__ pos; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_ETIMEDOUT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_MAIL ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_mail_auth_http_dummy_handler ; 
 int /*<<< orphan*/  ngx_mail_auth_http_module ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_6__*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC11(ngx_event_t *wev)
{
    ssize_t                     n, size;
    ngx_connection_t           *c;
    ngx_mail_session_t         *s;
    ngx_mail_auth_http_ctx_t   *ctx;
    ngx_mail_auth_http_conf_t  *ahcf;

    c = wev->data;
    s = c->data;

    ctx = FUNC7(s, ngx_mail_auth_http_module);

    FUNC5(NGX_LOG_DEBUG_MAIL, wev->log, 0,
                   "mail auth http write handler");

    if (wev->timedout) {
        FUNC6(NGX_LOG_ERR, wev->log, NGX_ETIMEDOUT,
                      "auth http server %V timed out", ctx->peer.name);
        FUNC1(c);
        FUNC3(ctx->pool);
        FUNC9(s);
        return;
    }

    size = ctx->request->last - ctx->request->pos;

    n = FUNC10(c, ctx->request->pos, size);

    if (n == NGX_ERROR) {
        FUNC1(c);
        FUNC3(ctx->pool);
        FUNC9(s);
        return;
    }

    if (n > 0) {
        ctx->request->pos += n;

        if (n == size) {
            wev->handler = ngx_mail_auth_http_dummy_handler;

            if (wev->timer_set) {
                FUNC2(wev);
            }

            if (FUNC4(wev, 0) != NGX_OK) {
                FUNC1(c);
                FUNC3(ctx->pool);
                FUNC9(s);
            }

            return;
        }
    }

    if (!wev->timer_set) {
        ahcf = FUNC8(s, ngx_mail_auth_http_module);
        FUNC0(wev, ahcf->timeout);
    }
}
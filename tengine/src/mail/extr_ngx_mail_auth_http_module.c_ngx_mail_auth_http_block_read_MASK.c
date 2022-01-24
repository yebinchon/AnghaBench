#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_mail_session_t ;
struct TYPE_8__ {int /*<<< orphan*/  connection; } ;
struct TYPE_9__ {int /*<<< orphan*/  pool; TYPE_1__ peer; } ;
typedef  TYPE_2__ ngx_mail_auth_http_ctx_t ;
struct TYPE_10__ {TYPE_4__* data; int /*<<< orphan*/  log; } ;
typedef  TYPE_3__ ngx_event_t ;
struct TYPE_11__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_4__ ngx_connection_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_MAIL ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ngx_mail_auth_http_module ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(ngx_event_t *rev)
{
    ngx_connection_t          *c;
    ngx_mail_session_t        *s;
    ngx_mail_auth_http_ctx_t  *ctx;

    FUNC3(NGX_LOG_DEBUG_MAIL, rev->log, 0,
                   "mail auth http block read");

    if (FUNC2(rev, 0) != NGX_OK) {
        c = rev->data;
        s = c->data;

        ctx = FUNC4(s, ngx_mail_auth_http_module);

        FUNC0(ctx->peer.connection);
        FUNC1(ctx->pool);
        FUNC5(s);
    }
}
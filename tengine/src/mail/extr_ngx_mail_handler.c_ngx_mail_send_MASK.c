#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_14__ {scalar_t__ blocked; scalar_t__ quit; TYPE_1__ out; } ;
typedef  TYPE_2__ ngx_mail_session_t ;
struct TYPE_15__ {int /*<<< orphan*/  timeout; } ;
typedef  TYPE_3__ ngx_mail_core_srv_conf_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_16__ {scalar_t__ timer_set; scalar_t__ timedout; TYPE_5__* data; } ;
typedef  TYPE_4__ ngx_event_t ;
struct TYPE_17__ {int timedout; scalar_t__ (* send ) (TYPE_5__*,int /*<<< orphan*/ ,scalar_t__) ;int /*<<< orphan*/  write; TYPE_6__* read; int /*<<< orphan*/  log; TYPE_2__* data; } ;
typedef  TYPE_5__ ngx_connection_t ;
struct TYPE_18__ {int /*<<< orphan*/  (* handler ) (TYPE_6__*) ;} ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_ETIMEDOUT ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  ngx_mail_core_module ; 
 TYPE_3__* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 

void
FUNC8(ngx_event_t *wev)
{
    ngx_int_t                  n;
    ngx_connection_t          *c;
    ngx_mail_session_t        *s;
    ngx_mail_core_srv_conf_t  *cscf;

    c = wev->data;
    s = c->data;

    if (wev->timedout) {
        FUNC3(NGX_LOG_INFO, c->log, NGX_ETIMEDOUT, "client timed out");
        c->timedout = 1;
        FUNC4(c);
        return;
    }

    if (s->out.len == 0) {
        if (FUNC2(c->write, 0) != NGX_OK) {
            FUNC4(c);
        }

        return;
    }

    n = c->send(c, s->out.data, s->out.len);

    if (n > 0) {
        s->out.data += n;
        s->out.len -= n;

        if (s->out.len != 0) {
            goto again;
        }

        if (wev->timer_set) {
            FUNC1(wev);
        }

        if (s->quit) {
            FUNC4(c);
            return;
        }

        if (s->blocked) {
            c->read->handler(c->read);
        }

        return;
    }

    if (n == NGX_ERROR) {
        FUNC4(c);
        return;
    }

    /* n == NGX_AGAIN */

again:

    cscf = FUNC5(s, ngx_mail_core_module);

    FUNC0(c->write, cscf->timeout);

    if (FUNC2(c->write, 0) != NGX_OK) {
        FUNC4(c);
        return;
    }
}
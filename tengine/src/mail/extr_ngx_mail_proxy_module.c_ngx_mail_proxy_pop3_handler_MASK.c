#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_9__ ;
typedef  struct TYPE_37__   TYPE_8__ ;
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_23__ ;
typedef  struct TYPE_29__   TYPE_22__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_19__ ;
typedef  struct TYPE_26__   TYPE_12__ ;
typedef  struct TYPE_25__   TYPE_11__ ;
typedef  struct TYPE_24__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ ssize_t ;
struct TYPE_37__ {scalar_t__ len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_8__ ngx_str_t ;
struct TYPE_32__ {int len; char* data; } ;
struct TYPE_28__ {int len; char* data; } ;
struct TYPE_38__ {int mail_state; TYPE_7__* proxy; TYPE_5__* connection; TYPE_3__ passwd; TYPE_1__ login; } ;
typedef  TYPE_9__ ngx_mail_session_t ;
struct TYPE_24__ {int /*<<< orphan*/  timeout; } ;
typedef  TYPE_10__ ngx_mail_proxy_conf_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_25__ {int /*<<< orphan*/  (* handler ) (TYPE_19__*) ;int /*<<< orphan*/  log; scalar_t__ timedout; TYPE_12__* data; } ;
typedef  TYPE_11__ ngx_event_t ;
struct TYPE_26__ {int timedout; scalar_t__ (* send ) (TYPE_12__*,int /*<<< orphan*/ *,scalar_t__) ;TYPE_22__* log; int /*<<< orphan*/  read; TYPE_4__* write; int /*<<< orphan*/  pool; TYPE_9__* data; } ;
typedef  TYPE_12__ ngx_connection_t ;
struct TYPE_36__ {TYPE_6__* buffer; } ;
struct TYPE_35__ {int /*<<< orphan*/  start; int /*<<< orphan*/  last; int /*<<< orphan*/  pos; } ;
struct TYPE_34__ {TYPE_19__* write; TYPE_23__* read; TYPE_2__* log; } ;
struct TYPE_33__ {int /*<<< orphan*/  (* handler ) (TYPE_19__*) ;} ;
struct TYPE_31__ {char* action; } ;
struct TYPE_30__ {int /*<<< orphan*/  (* handler ) (TYPE_19__*) ;} ;
struct TYPE_29__ {int /*<<< orphan*/ * action; } ;
struct TYPE_27__ {int /*<<< orphan*/  (* handler ) (TYPE_19__*) ;} ;

/* Variables and functions */
 void* CR ; 
 int /*<<< orphan*/  LF ; 
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_ETIMEDOUT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_MAIL ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_23__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_22__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_10__* FUNC5 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_19__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*) ; 
 int /*<<< orphan*/  ngx_mail_proxy_module ; 
 scalar_t__ FUNC8 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_9__*) ; 
 void* FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
#define  ngx_pop3_passwd 130 
#define  ngx_pop3_start 129 
#define  ngx_pop3_user 128 
 int /*<<< orphan*/  FUNC11 (TYPE_8__*) ; 
 scalar_t__ FUNC12 (TYPE_12__*,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC13(ngx_event_t *rev)
{
    u_char                 *p;
    ngx_int_t               rc;
    ngx_str_t               line;
    ngx_connection_t       *c;
    ngx_mail_session_t     *s;
    ngx_mail_proxy_conf_t  *pcf;

    FUNC3(NGX_LOG_DEBUG_MAIL, rev->log, 0,
                   "mail proxy pop3 auth handler");

    c = rev->data;
    s = c->data;

    if (rev->timedout) {
        FUNC4(NGX_LOG_INFO, c->log, NGX_ETIMEDOUT,
                      "upstream timed out");
        c->timedout = 1;
        FUNC7(s);
        return;
    }

    rc = FUNC8(s, 0);

    if (rc == NGX_AGAIN) {
        return;
    }

    if (rc == NGX_ERROR) {
        FUNC9(s);
        return;
    }

    switch (s->mail_state) {

    case ngx_pop3_start:
        FUNC3(NGX_LOG_DEBUG_MAIL, rev->log, 0, "mail proxy send user");

        s->connection->log->action = "sending user name to upstream";

        line.len = sizeof("USER ")  - 1 + s->login.len + 2;
        line.data = FUNC10(c->pool, line.len);
        if (line.data == NULL) {
            FUNC7(s);
            return;
        }

        p = FUNC1(line.data, "USER ", sizeof("USER ") - 1);
        p = FUNC1(p, s->login.data, s->login.len);
        *p++ = CR; *p = LF;

        s->mail_state = ngx_pop3_user;
        break;

    case ngx_pop3_user:
        FUNC3(NGX_LOG_DEBUG_MAIL, rev->log, 0, "mail proxy send pass");

        s->connection->log->action = "sending password to upstream";

        line.len = sizeof("PASS ")  - 1 + s->passwd.len + 2;
        line.data = FUNC10(c->pool, line.len);
        if (line.data == NULL) {
            FUNC7(s);
            return;
        }

        p = FUNC1(line.data, "PASS ", sizeof("PASS ") - 1);
        p = FUNC1(p, s->passwd.data, s->passwd.len);
        *p++ = CR; *p = LF;

        s->mail_state = ngx_pop3_passwd;
        break;

    case ngx_pop3_passwd:
        s->connection->read->handler = ngx_mail_proxy_handler;
        s->connection->write->handler = ngx_mail_proxy_handler;
        rev->handler = ngx_mail_proxy_handler;
        c->write->handler = ngx_mail_proxy_handler;

        pcf = FUNC5(s, ngx_mail_proxy_module);
        FUNC0(s->connection->read, pcf->timeout);
        FUNC2(c->read);

        c->log->action = NULL;
        FUNC4(NGX_LOG_INFO, c->log, 0, "client logged in");

        FUNC6(s->connection->write);

        return;

    default:
#if (NGX_SUPPRESS_WARN)
        ngx_str_null(&line);
#endif
        break;
    }

    if (c->send(c, line.data, line.len) < (ssize_t) line.len) {
        /*
         * we treat the incomplete sending as NGX_ERROR
         * because it is very strange here
         */
        FUNC7(s);
        return;
    }

    s->proxy->buffer->pos = s->proxy->buffer->start;
    s->proxy->buffer->last = s->proxy->buffer->start;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int sec; scalar_t__ msec; } ;
typedef  TYPE_2__ ngx_time_t ;
struct TYPE_13__ {int /*<<< orphan*/  handshake_timeout; } ;
typedef  TYPE_3__ ngx_stream_ssl_conf_t ;
typedef  int /*<<< orphan*/  ngx_stream_session_t ;
struct TYPE_14__ {scalar_t__ tcp_nodelay; } ;
typedef  TYPE_4__ ngx_stream_core_srv_conf_t ;
typedef  int /*<<< orphan*/  ngx_ssl_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_15__ {TYPE_1__* ssl; int /*<<< orphan*/  read; int /*<<< orphan*/ * data; } ;
typedef  TYPE_5__ ngx_connection_t ;
struct TYPE_11__ {int /*<<< orphan*/  handler; scalar_t__ handshake_start_msec; } ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  ngx_stream_core_module ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_stream_ssl_handshake_handler ; 
 int /*<<< orphan*/  ngx_stream_ssl_module ; 
 scalar_t__ FUNC4 (TYPE_5__*) ; 
 TYPE_2__* FUNC5 () ; 

__attribute__((used)) static ngx_int_t
FUNC6(ngx_ssl_t *ssl, ngx_connection_t *c)
{
    ngx_int_t                    rc;
    ngx_stream_session_t        *s;
    ngx_stream_ssl_conf_t       *sslcf;
    ngx_stream_core_srv_conf_t  *cscf;

    s = c->data;

    cscf = FUNC3(s, ngx_stream_core_module);

    if (cscf->tcp_nodelay && FUNC4(c) != NGX_OK) {
        return NGX_ERROR;
    }

    if (FUNC1(ssl, c, 0) != NGX_OK) {
        return NGX_ERROR;
    }

#if (T_NGX_SSL_HANDSHAKE_TIME)
    {
    /* ssl handshake start time */
    ngx_time_t *tp = ngx_timeofday();
    c->ssl->handshake_start_msec = tp->sec * 1000 + tp->msec;
    }
#endif

    rc = FUNC2(c);

    if (rc == NGX_ERROR) {
        return NGX_ERROR;
    }

    if (rc == NGX_AGAIN) {
        sslcf = FUNC3(s, ngx_stream_ssl_module);

        FUNC0(c->read, sslcf->handshake_timeout);

        c->ssl->handler = ngx_stream_ssl_handshake_handler;

        return NGX_AGAIN;
    }

    /* rc == NGX_OK */

    return NGX_OK;
}
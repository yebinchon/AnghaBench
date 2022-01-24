#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int verify; int /*<<< orphan*/  ssl; } ;
typedef  TYPE_2__ ngx_stream_ssl_conf_t ;
struct TYPE_12__ {TYPE_4__* connection; int /*<<< orphan*/  ssl; } ;
typedef  TYPE_3__ ngx_stream_session_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_13__ {TYPE_1__* ssl; TYPE_9__* log; } ;
typedef  TYPE_4__ ngx_connection_t ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_14__ {char* action; } ;
struct TYPE_10__ {int /*<<< orphan*/  connection; int /*<<< orphan*/  session_ctx; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 long FUNC2 (int /*<<< orphan*/ ) ; 
 long X509_V_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_9__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (long) ; 
 TYPE_2__* FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  ngx_stream_ssl_module ; 

__attribute__((used)) static ngx_int_t
FUNC10(ngx_stream_session_t *s)
{
    long                    rc;
    X509                   *cert;
    ngx_int_t               rv;
    ngx_connection_t       *c;
    ngx_stream_ssl_conf_t  *sslcf;

    if (!s->ssl) {
        return NGX_OK;
    }

    c = s->connection;

    sslcf = FUNC8(s, ngx_stream_ssl_module);

    if (c->ssl == NULL) {
        c->log->action = "SSL handshaking";

        rv = FUNC9(&sslcf->ssl, c);

        if (rv != NGX_OK) {
            return rv;
        }
    }

    if (sslcf->verify) {
        rc = FUNC2(c->ssl->connection);

        if (rc != X509_V_OK
            && (sslcf->verify != 3 || !FUNC7(rc)))
        {
            FUNC5(NGX_LOG_INFO, c->log, 0,
                          "client SSL certificate verify error: (%l:%s)",
                          rc, FUNC4(rc));

            FUNC6(c->ssl->session_ctx,
                                       (FUNC0(c->ssl->connection)));
            return NGX_ERROR;
        }

        if (sslcf->verify == 1) {
            cert = FUNC1(c->ssl->connection);

            if (cert == NULL) {
                FUNC5(NGX_LOG_INFO, c->log, 0,
                              "client sent no required SSL certificate");

                FUNC6(c->ssl->session_ctx,
                                       (FUNC0(c->ssl->connection)));
                return NGX_ERROR;
            }

            FUNC3(cert);
        }
    }

    return NGX_OK;
}
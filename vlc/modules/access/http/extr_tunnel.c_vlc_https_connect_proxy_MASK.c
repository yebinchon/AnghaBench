#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  psz_password; int /*<<< orphan*/  psz_username; int /*<<< orphan*/  i_port; int /*<<< orphan*/ * psz_host; int /*<<< orphan*/ * psz_protocol; } ;
typedef  TYPE_1__ vlc_url_t ;
struct TYPE_15__ {int /*<<< orphan*/ * p; int /*<<< orphan*/ * ops; } ;
typedef  TYPE_2__ vlc_tls_t ;
struct TYPE_16__ {TYPE_2__ tls; TYPE_2__* sock; } ;
typedef  TYPE_3__ vlc_tls_proxy_t ;
typedef  int /*<<< orphan*/  vlc_tls_client_t ;
struct vlc_http_msg {int dummy; } ;
struct vlc_http_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_3__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char const*) ; 
 struct vlc_http_conn* FUNC8 (void*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct vlc_http_conn*) ; 
 struct vlc_http_msg* FUNC10 (struct vlc_http_conn*,char const*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 () ; 
 TYPE_2__* FUNC15 (int /*<<< orphan*/ *,TYPE_2__*,char const*,char*,char const**,char**) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 TYPE_2__* FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vlc_tls_proxy_ops ; 

vlc_tls_t *FUNC18(void *ctx, vlc_tls_client_t *creds,
                                   const char *hostname, unsigned port,
                                   bool *restrict two, const char *proxy)
{
    vlc_url_t url;
    int canc;

    FUNC0(proxy != NULL);

    if (port == 0)
        port = 443;

    canc = FUNC14();
    FUNC7(&url, proxy);
    FUNC13(canc);

    if (url.psz_protocol == NULL || url.psz_host == NULL)
    {
        FUNC6(&url);
        return NULL;
    }

    vlc_tls_t *sock = NULL;
    bool ptwo = false;
    if (!FUNC3(url.psz_protocol, "https"))
        sock = FUNC11(creds, url.psz_host, url.i_port, &ptwo);
    else
    if (!FUNC3(url.psz_protocol, "http"))
        sock = FUNC17(creds ? FUNC12(creds) : NULL,
                                     url.psz_host, url.i_port);
    else
        sock = NULL;

    if (sock == NULL)
    {
        FUNC6(&url);
        return NULL;
    }

    FUNC0(!ptwo); /* HTTP/2 proxy not supported yet */

    vlc_tls_proxy_t *psock = FUNC2(sizeof (*psock));
    if (FUNC5(psock == NULL))
    {
        FUNC6(&url);
        goto error;
    }

    psock->tls.ops = &vlc_tls_proxy_ops;
    psock->tls.p = NULL;
    psock->sock = sock;

    struct vlc_http_conn *conn = /*ptwo ? vlc_h2_conn_create(ctx, &psock->tls)
                               :*/ FUNC8(ctx, &psock->tls, false);
    if (FUNC5(conn == NULL))
    {
        FUNC16(&psock->tls);
        FUNC6(&url);
        goto error;
    }

    struct vlc_http_msg *resp = FUNC10(conn, hostname, port,
                                                     url.psz_username,
                                                     url.psz_password);
    FUNC6(&url);

    /* TODO: reuse connection to HTTP/2 proxy */
    FUNC9(conn); /* psock is destroyed there too */

    if (resp == NULL)
        goto error;

    vlc_tls_t *tls;
    const char *alpn[] = { "h2", "http/1.1", NULL };
    char *alp;

    tls = FUNC15(creds, sock, hostname, "https",
                                      alpn + !*two, &alp);
    if (tls == NULL)
        goto error;

    *two = (alp != NULL) && !FUNC4(alp, "h2");
    FUNC1(alp);
    return tls;
error:
    FUNC16(sock);
    return NULL;
}
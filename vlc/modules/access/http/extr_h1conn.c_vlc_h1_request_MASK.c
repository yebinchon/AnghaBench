#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tls_t ;
struct vlc_http_stream {int dummy; } ;
struct vlc_http_msg {int dummy; } ;
struct vlc_http_conn {int dummy; } ;
struct addrinfo {struct addrinfo* ai_next; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,unsigned int,struct addrinfo*,struct addrinfo**) ; 
 struct vlc_http_conn* FUNC4 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vlc_http_conn*) ; 
 int /*<<< orphan*/  FUNC6 (void*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (void*,char*,char const*,...) ; 
 struct vlc_http_stream* FUNC8 (struct vlc_http_conn*,struct vlc_http_msg const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (struct addrinfo const*,int) ; 

struct vlc_http_stream *FUNC12(void *ctx, const char *hostname,
                                       unsigned port, bool proxy,
                                       const struct vlc_http_msg *req,
                                       bool idempotent,
                                       struct vlc_http_conn **restrict connp)
{
    struct addrinfo hints =
    {
        .ai_socktype = SOCK_STREAM,
        .ai_protocol = IPPROTO_TCP,
    }, *res;

    FUNC6(ctx, "resolving %s ...", hostname);

    int val = FUNC3(hostname, port, &hints, &res);
    if (val != 0)
    {   /* TODO: C locale for gai_strerror() */
        FUNC7(ctx, "cannot resolve %s: %s", hostname,
                     FUNC1(val));
        return NULL;
    }

    for (const struct addrinfo *p = res; p != NULL; p = p->ai_next)
    {
        vlc_tls_t *tcp = FUNC11(p, idempotent);
        if (tcp == NULL)
        {
            FUNC7(ctx, "socket error: %s", FUNC9(errno));
            continue;
        }

        struct vlc_http_conn *conn = FUNC4(ctx, tcp, proxy);
        if (FUNC2(conn == NULL))
        {
            FUNC10(tcp);
            continue;
        }

        /* Send the HTTP request */
        struct vlc_http_stream *stream = FUNC8(conn, req);

        if (stream != NULL)
        {
            if (connp != NULL)
                *connp = conn;
            else
                FUNC5(conn);

            FUNC0(res);
            return stream;
        }

        FUNC5(conn);

        if (!idempotent)
            break; /* If the request is nonidempotent, it cannot be resent. */
    }

    /* All address info failed. */
    FUNC0(res);
    return NULL;
}
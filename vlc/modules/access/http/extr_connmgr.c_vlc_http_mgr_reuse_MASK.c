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
struct vlc_http_stream {int dummy; } ;
struct vlc_http_msg {int dummy; } ;
struct vlc_http_mgr {int dummy; } ;
struct vlc_http_conn {int dummy; } ;

/* Variables and functions */
 struct vlc_http_conn* FUNC0 (struct vlc_http_mgr*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct vlc_http_mgr*,struct vlc_http_conn*) ; 
 struct vlc_http_msg* FUNC2 (struct vlc_http_stream*) ; 
 struct vlc_http_stream* FUNC3 (struct vlc_http_conn*,struct vlc_http_msg const*) ; 

__attribute__((used)) static
struct vlc_http_msg *FUNC4(struct vlc_http_mgr *mgr,
                                        const char *host, unsigned port,
                                        const struct vlc_http_msg *req)
{
    struct vlc_http_conn *conn = FUNC0(mgr, host, port);
    if (conn == NULL)
        return NULL;

    struct vlc_http_stream *stream = FUNC3(conn, req);
    if (stream != NULL)
    {
        struct vlc_http_msg *m = FUNC2(stream);
        if (m != NULL)
            return m;

        /* NOTE: If the request were not idempotent, we would not know if it
         * was processed by the other end. Thus POST is not used/supported so
         * far, and CONNECT is treated as if it were idempotent (which works
         * fine here). */
    }
    /* Get rid of closing or reset connection */
    FUNC1(mgr, conn);
    return NULL;
}
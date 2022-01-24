#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vlc_http_stream {int dummy; } ;
struct vlc_http_msg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * tls; } ;
struct vlc_h1_conn {int active; scalar_t__ content_length; int connection_close; TYPE_1__ conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vlc_h1_conn*) ; 
 scalar_t__ UINTMAX_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct vlc_http_stream* FUNC4 (struct vlc_http_stream*,int /*<<< orphan*/ *) ; 
 struct vlc_h1_conn* FUNC5 (struct vlc_http_stream*) ; 
 struct vlc_http_msg* FUNC6 (struct vlc_h1_conn*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct vlc_http_msg*,struct vlc_http_stream*) ; 
 int /*<<< orphan*/  FUNC10 (struct vlc_http_msg*) ; 
 scalar_t__ FUNC11 (struct vlc_http_msg*) ; 
 char* FUNC12 (struct vlc_http_msg*,char*,char*) ; 
 struct vlc_http_msg* FUNC13 (char*) ; 
 int /*<<< orphan*/ * FUNC14 (char const*) ; 
 char* FUNC15 (int /*<<< orphan*/ *,size_t*) ; 

__attribute__((used)) static struct vlc_http_msg *FUNC16(struct vlc_http_stream *stream)
{
    struct vlc_h1_conn *conn = FUNC5(stream);
    struct vlc_http_msg *resp;
    const char *str;
    size_t len;
    int minor;

    FUNC1(conn->active);

    if (conn->conn.tls == NULL)
        return NULL;

    char *payload = FUNC15(conn->conn.tls, &len);
    if (payload == NULL)
        return FUNC6(conn);

    FUNC7(FUNC0(conn), "incoming response:\n%.*s", (int)len, payload);

    resp = FUNC13(payload);
    minor = FUNC8(payload);
    FUNC2(payload);

    if (resp == NULL)
        return FUNC6(conn);

    FUNC1(minor >= 0);

    conn->content_length = FUNC11(resp);
    conn->connection_close = false;

    if (minor >= 1)
    {
        if (FUNC12(resp, "Connection", "close") != NULL)
            conn->connection_close = true;

        str = FUNC12(resp, "Transfer-Encoding", "chunked");
        if (str != NULL)
        {
            if (FUNC14(str) != NULL)
            {
                FUNC10(resp);
                return FUNC6(conn); /* unsupported TE */
            }

            FUNC1(conn->content_length == UINTMAX_MAX);
            stream = FUNC4(stream, conn->conn.tls);
            if (FUNC3(stream == NULL))
            {
                FUNC10(resp);
                return FUNC6(conn);
            }
        }
    }
    else
        conn->connection_close = true;

    FUNC9(resp, stream);
    return resp;
}
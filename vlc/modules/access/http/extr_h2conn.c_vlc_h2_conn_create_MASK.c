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
struct vlc_tls {int dummy; } ;
struct vlc_http_conn {struct vlc_tls* tls; int /*<<< orphan*/ * cbs; } ;
struct vlc_h2_conn {int next_id; int released; struct vlc_http_conn conn; int /*<<< orphan*/ * out; int /*<<< orphan*/  lock; int /*<<< orphan*/  thread; void* send_cwnd; void* init_send_cwnd; int /*<<< orphan*/ * streams; void* opaque; } ;

/* Variables and functions */
 void* VLC_H2_DEFAULT_INIT_WINDOW ; 
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_INPUT ; 
 int /*<<< orphan*/  FUNC0 (struct vlc_h2_conn*) ; 
 struct vlc_h2_conn* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vlc_h2_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vlc_h2_conn_callbacks ; 
 scalar_t__ FUNC4 (struct vlc_h2_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (struct vlc_tls*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlc_h2_recv_thread ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

struct vlc_http_conn *FUNC10(void *ctx, struct vlc_tls *tls)
{
    struct vlc_h2_conn *conn = FUNC1(sizeof (*conn));
    if (FUNC2(conn == NULL))
        return NULL;

    conn->conn.cbs = &vlc_h2_conn_callbacks;
    conn->conn.tls = tls;
    conn->out = FUNC6(tls, true);
    conn->opaque = ctx;
    conn->streams = NULL;
    conn->next_id = 1; /* TODO: server side */
    conn->released = false;
    conn->init_send_cwnd = VLC_H2_DEFAULT_INIT_WINDOW;
    conn->send_cwnd = VLC_H2_DEFAULT_INIT_WINDOW;

    if (FUNC2(conn->out == NULL))
        goto error;

    FUNC9(&conn->lock);

    if (FUNC4(conn, FUNC5())
     || FUNC3(&conn->thread, vlc_h2_recv_thread, conn,
                  VLC_THREAD_PRIORITY_INPUT))
    {
        FUNC8(&conn->lock);
        FUNC7(conn->out);
        goto error;
    }
    return &conn->conn;
error:
    FUNC0(conn);
    return NULL;
}
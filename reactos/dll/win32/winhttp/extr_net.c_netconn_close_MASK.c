#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  host; int /*<<< orphan*/  socket; int /*<<< orphan*/  ssl_ctx; struct TYPE_4__* extra_buf; struct TYPE_4__* ssl_buf; struct TYPE_4__* peek_msg_mem; scalar_t__ secure; } ;
typedef  TYPE_1__ netconn_t ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

BOOL FUNC6( netconn_t *conn )
{
    int res;

    if (conn->secure)
    {
        FUNC2( conn->peek_msg_mem );
        FUNC2(conn->ssl_buf);
        FUNC2(conn->extra_buf);
        FUNC0(&conn->ssl_ctx);
    }
    res = FUNC1( conn->socket );
    FUNC3( conn->host );
    FUNC2(conn);
    if (res == -1)
    {
        FUNC4( FUNC5( errno ) );
        return FALSE;
    }
    return TRUE;
}
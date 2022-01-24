#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int fd; int flags; } ;
typedef  TYPE_1__ connection ;
struct TYPE_6__ {int /*<<< orphan*/  el; } ;

/* Variables and functions */
 int /*<<< orphan*/  AE_READABLE ; 
 int /*<<< orphan*/  AE_WRITABLE ; 
 int CONN_FLAG_CLOSE_SCHEDULED ; 
 int CONN_FLAG_IN_HANDLER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(connection *conn) {
    if (conn->fd != -1) {
        FUNC0(server.el,conn->fd,AE_READABLE);
        FUNC0(server.el,conn->fd,AE_WRITABLE);
        FUNC1(conn->fd);
        conn->fd = -1;
    }

    /* If called from within a handler, schedule the close but
     * keep the connection until the handler returns.
     */
    if (conn->flags & CONN_FLAG_IN_HANDLER) {
        conn->flags |= CONN_FLAG_CLOSE_SCHEDULED;
        return;
    }

    FUNC2(conn);
}
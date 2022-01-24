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
struct TYPE_2__ {int /*<<< orphan*/ * tls; } ;
struct vlc_h1_conn {TYPE_1__ conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vlc_h1_conn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void *FUNC4(struct vlc_h1_conn *conn)
{
    if (conn->conn.tls != NULL)
    {
        FUNC1(FUNC0(conn), "connection failed");
        FUNC3(conn->conn.tls, true);
        FUNC2(conn->conn.tls);
        conn->conn.tls = NULL;
    }
    return NULL;
}
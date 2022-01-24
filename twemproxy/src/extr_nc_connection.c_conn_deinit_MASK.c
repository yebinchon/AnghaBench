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
struct conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct conn* FUNC1 (int /*<<< orphan*/ *) ; 
 struct conn* FUNC2 (struct conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct conn*) ; 
 int /*<<< orphan*/  conn_tqe ; 
 int /*<<< orphan*/  free_connq ; 
 scalar_t__ nfree_connq ; 

void
FUNC4(void)
{
    struct conn *conn, *nconn; /* current and next connection */

    for (conn = FUNC1(&free_connq); conn != NULL;
         conn = nconn, nfree_connq--) {
        FUNC0(nfree_connq > 0);
        nconn = FUNC2(conn, conn_tqe);
        FUNC3(conn);
    }
    FUNC0(nfree_connq == 0);
}
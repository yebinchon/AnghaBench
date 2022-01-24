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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  connection ;
struct TYPE_4__ {int /*<<< orphan*/  conn; int /*<<< orphan*/  sndbuf; } ;
typedef  TYPE_1__ clusterLink ;

/* Variables and functions */
 int /*<<< orphan*/  LL_DEBUG ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 

void FUNC8(connection *conn) {
    clusterLink *link = FUNC1(conn);
    ssize_t nwritten;

    nwritten = FUNC3(conn, link->sndbuf, FUNC5(link->sndbuf));
    if (nwritten <= 0) {
        FUNC7(LL_DEBUG,"I/O error writing to node link: %s",
            (nwritten == -1) ? FUNC0(conn) : "short write");
        FUNC4(link);
        return;
    }
    FUNC6(link->sndbuf,nwritten,-1);
    if (FUNC5(link->sndbuf) == 0)
        FUNC2(link->conn, NULL);
}
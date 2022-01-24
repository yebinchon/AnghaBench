#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sock; } ;
struct TYPE_6__ {int /*<<< orphan*/ * ssl; TYPE_1__ conn; int /*<<< orphan*/ * ssl_ctx; } ;
typedef  TYPE_2__ SSLConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 

__attribute__((used)) static int
FUNC6(SSLConnection *conn)
{
	int ret;

	conn->ssl_ctx = FUNC4();

	if (NULL == conn->ssl_ctx)
	{
		FUNC5(conn, -1);
		return -1;
	}

	FUNC0();

	conn->ssl = FUNC2(conn->ssl_ctx);

	if (conn->ssl == NULL)
	{
		FUNC5(conn, -1);
		return -1;
	}

	FUNC0();

	ret = FUNC3(conn->ssl, conn->conn.sock);

	if (ret == 0)
	{
		FUNC5(conn, -1);
		return -1;
	}

	ret = FUNC1(conn->ssl);

	if (ret <= 0)
	{
		FUNC5(conn, ret);
		ret = -1;
	}

	return ret;
}
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
struct TYPE_2__ {int /*<<< orphan*/ * ssl_ctx; int /*<<< orphan*/ * ssl; } ;
typedef  TYPE_1__ SSLConnection ;
typedef  int /*<<< orphan*/  Connection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(Connection *conn)
{
	SSLConnection *sslconn = (SSLConnection *) conn;

	if (sslconn->ssl != NULL)
	{
		FUNC1(sslconn->ssl);
		sslconn->ssl = NULL;
	}

	if (sslconn->ssl_ctx != NULL)
	{
		FUNC0(sslconn->ssl_ctx);
		sslconn->ssl_ctx = NULL;
	}

	FUNC2(conn);
}
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
typedef  int /*<<< orphan*/  Connection ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECTION_PLAIN ; 
 int /*<<< orphan*/  CONNECTION_SSL ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (char*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 

Connection *
FUNC9(const char *host, const char *service)
{
	Connection *conn = NULL;
	int ret;

	if (FUNC4("http", service) == 0)
		conn = FUNC6(CONNECTION_PLAIN);
	else if (FUNC4("https", service) == 0)
		conn = FUNC6(CONNECTION_SSL);
	else
		FUNC0(WARNING,
				(FUNC1(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC3("scheme \"%s\" not supported for telemetry", service)));

	if (conn == NULL)
		return NULL;

	ret = FUNC5(conn, host, service, 0);

	if (ret < 0)
	{
		const char *errstr = FUNC8(conn);

		FUNC7(conn);
		conn = NULL;

		FUNC0(WARNING,
				(FUNC1(ERRCODE_INTERNAL_ERROR),
				 FUNC3("telemetry could not connect to \"%s\"", host),
				 FUNC2("%s", errstr)));
	}

	return conn;
}
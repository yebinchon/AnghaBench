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
typedef  int /*<<< orphan*/  HttpResponseState ;
typedef  int /*<<< orphan*/  HttpRequest ;
typedef  scalar_t__ HttpError ;
typedef  int /*<<< orphan*/  Datum ;
typedef  scalar_t__ ConnectionType ;
typedef  int /*<<< orphan*/  Connection ;

/* Variables and functions */
 scalar_t__ CONNECTION_MOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ HTTP_ERROR_NONE ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  jsonb_in ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_string ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 char const* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char const* FUNC18 (scalar_t__) ; 

__attribute__((used)) static Datum
FUNC19(ConnectionType type, int status, char *host, int port)
{
	Connection *conn;
	HttpRequest *req;
	HttpResponseState *rsp = NULL;
	HttpError err;
	Datum json;

	conn = FUNC7(type);

	if (conn == NULL)
		return FUNC1("could not initialize a connection");

	if (FUNC6(conn, host, NULL, port) < 0)
	{
		const char *err_msg = FUNC9(conn);

		FUNC8(conn);
		FUNC4(ERROR, "connection error: %s", err_msg);
	}

#ifdef TS_DEBUG
	if (type == CONNECTION_MOCK)
		ts_connection_mock_set_recv_buf(conn, test_string, strlen(test_string));
#endif

	req = FUNC3(status);

	rsp = FUNC13();

	err = FUNC17(conn, req, rsp);

	FUNC11(req);
	FUNC8(conn);

	if (err != HTTP_ERROR_NONE)
		FUNC4(ERROR, "%s", FUNC18(err));

	if (!FUNC16(rsp))
		FUNC4(ERROR,
			 "endpoint sent back unexpected HTTP status: %d",
			 FUNC15(rsp));

	json = FUNC2(jsonb_in, FUNC0(FUNC12(rsp)));

	FUNC14(rsp);

	return json;
}
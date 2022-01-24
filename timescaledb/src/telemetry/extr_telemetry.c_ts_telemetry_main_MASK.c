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
typedef  int /*<<< orphan*/  Connection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ HTTP_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC16 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC17 () ; 

bool
FUNC18(const char *host, const char *path, const char *service)
{
	HttpError err;
	Connection *conn;
	HttpRequest *req;
	HttpResponseState *rsp;
	bool started = false;

	if (!FUNC17())
		return true;

	if (!FUNC2())
	{
		started = true;
		FUNC3();
	}

	conn = FUNC16(host, service);

	if (conn == NULL)
		goto cleanup;

	req = FUNC6(host, path);

	rsp = FUNC10();

	err = FUNC14(conn, req, rsp);

	FUNC8(req);
	FUNC7(conn);

	if (err != HTTP_ERROR_NONE)
	{
		FUNC4(WARNING, "telemetry error: %s", FUNC15(err));
		goto cleanup;
	}

	if (!FUNC13(rsp))
	{
		FUNC4(WARNING,
			 "telemetry got unexpected HTTP response status: %d",
			 FUNC12(rsp));
		goto cleanup;
	}

	/*
	 * Do the version-check. Response is the body of a well-formed HTTP
	 * response, since otherwise the previous line will throw an error.
	 */
	FUNC5(FUNC9(rsp));

	FUNC11(rsp);

	if (started)
		FUNC1();
	return true;

cleanup:
	if (started)
		FUNC0();
	return false;
}
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
typedef  scalar_t__ ssize_t ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  HttpResponseState ;
typedef  int /*<<< orphan*/  HttpRequest ;
typedef  scalar_t__ HttpError ;
typedef  int /*<<< orphan*/  Connection ;

/* Variables and functions */
 scalar_t__ HTTP_ERROR_CONN_CLOSED ; 
 scalar_t__ HTTP_ERROR_INVALID_BUFFER_STATE ; 
 scalar_t__ HTTP_ERROR_NONE ; 
 scalar_t__ HTTP_ERROR_READ ; 
 scalar_t__ HTTP_ERROR_REQUEST_BUILD ; 
 scalar_t__ HTTP_ERROR_RESPONSE_INCOMPLETE ; 
 scalar_t__ HTTP_ERROR_RESPONSE_PARSE ; 
 scalar_t__ HTTP_ERROR_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 
 char* FUNC2 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 

HttpError
FUNC6(Connection *conn, HttpRequest *req, HttpResponseState *state)
{
	const char *built_request;
	size_t request_len;
	off_t write_off = 0;
	HttpError err = HTTP_ERROR_NONE;
	int ret;

	built_request = FUNC2(req, &request_len);

	if (NULL == built_request)
		return HTTP_ERROR_REQUEST_BUILD;

	while (request_len > 0)
	{
		ret = FUNC1(conn, built_request + write_off, request_len);

		if (ret < 0 || ret > request_len)
			return HTTP_ERROR_WRITE;

		if (ret == 0)
			return HTTP_ERROR_CONN_CLOSED;

		write_off += ret;
		request_len -= ret;
	}

	while (err == HTTP_ERROR_NONE && !FUNC3(state))
	{
		ssize_t remaining = 0;
		char *buf = FUNC4(state, &remaining);

		if (remaining < 0)
			err = HTTP_ERROR_INVALID_BUFFER_STATE;
		else if (remaining == 0)
			err = HTTP_ERROR_RESPONSE_INCOMPLETE;
		else
		{
			ssize_t bytes_read = FUNC0(conn, buf, remaining);

			if (bytes_read < 0)
				err = HTTP_ERROR_READ;
			/* Check for error or closed socket/EOF (ret == 0) */
			else if (bytes_read == 0)
				err = HTTP_ERROR_CONN_CLOSED;
			else if (!FUNC5(state, bytes_read))
				err = HTTP_ERROR_RESPONSE_PARSE;
		}
	}

	return err;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  int /*<<< orphan*/  HttpRequest ;

/* Variables and functions */
 int /*<<< orphan*/  HTTP_CONTENT_LENGTH ; 
 int /*<<< orphan*/  HTTP_CONTENT_TYPE ; 
 int /*<<< orphan*/  HTTP_HOST ; 
 int /*<<< orphan*/  HTTP_POST ; 
 int /*<<< orphan*/  HTTP_VERSION_10 ; 
 char const* TIMESCALE_TYPE ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

HttpRequest *
FUNC7(const char *host, const char *path)
{
	char body_len_string[5];
	HttpRequest *req;
	StringInfo jtext = FUNC0();

	FUNC1(body_len_string, 5, "%d", jtext->len);

	/* Fill in HTTP request */
	req = FUNC2(HTTP_POST);

	FUNC5(req, path);
	FUNC6(req, HTTP_VERSION_10);
	FUNC4(req, HTTP_CONTENT_TYPE, TIMESCALE_TYPE);
	FUNC4(req, HTTP_CONTENT_LENGTH, body_len_string);
	FUNC4(req, HTTP_HOST, host);
	FUNC3(req, jtext->data, jtext->len);

	return req;
}
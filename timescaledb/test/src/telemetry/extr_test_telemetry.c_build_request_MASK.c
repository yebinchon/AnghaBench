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
typedef  int /*<<< orphan*/  HttpRequest ;

/* Variables and functions */
 int /*<<< orphan*/  HTTP_CONTENT_LENGTH ; 
 int /*<<< orphan*/  HTTP_GET ; 
 int /*<<< orphan*/  HTTP_HOST ; 
 int /*<<< orphan*/  HTTP_VERSION_10 ; 
 char* TEST_ENDPOINT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HttpRequest *
FUNC5(int status)
{
	HttpRequest *req = FUNC1(HTTP_GET);
	char uri[20];

	FUNC0(uri, 20, "/status/%d", status);

	FUNC3(req, uri);
	FUNC4(req, HTTP_VERSION_10);
	FUNC2(req, HTTP_HOST, TEST_ENDPOINT);
	FUNC2(req, HTTP_CONTENT_LENGTH, "0");
	return req;
}
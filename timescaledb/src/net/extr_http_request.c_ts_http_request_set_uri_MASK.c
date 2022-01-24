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
struct TYPE_3__ {char* uri; int uri_len; int /*<<< orphan*/  context; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ HttpRequest ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (char const*) ; 

void
FUNC4(HttpRequest *req, const char *uri)
{
	MemoryContext old = FUNC0(req->context);
	int uri_len = FUNC3(uri);

	req->uri = FUNC2(uri_len + 1);
	FUNC1(req->uri, uri, uri_len);
	req->uri[uri_len] = '\0';
	req->uri_len = uri_len;
	FUNC0(old);
}
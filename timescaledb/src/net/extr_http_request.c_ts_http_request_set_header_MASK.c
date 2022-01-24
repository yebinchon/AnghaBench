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
struct TYPE_3__ {int /*<<< orphan*/ * headers; int /*<<< orphan*/  context; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ HttpRequest ;
typedef  int /*<<< orphan*/  HttpHeader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int,char const*,int,int /*<<< orphan*/ *) ; 

void
FUNC3(HttpRequest *req, const char *name, const char *value)
{
	MemoryContext old = FUNC0(req->context);
	int name_len = FUNC1(name);
	int value_len = FUNC1(value);
	HttpHeader *new_header = FUNC2(name, name_len, value, value_len, req->headers);

	req->headers = new_header;
	FUNC0(old);
}
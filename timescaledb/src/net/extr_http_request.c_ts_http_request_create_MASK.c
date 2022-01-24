#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  context; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HttpRequestMethod ;
typedef  TYPE_1__ HttpRequest ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

HttpRequest *
FUNC4(HttpRequestMethod method)
{
	MemoryContext request_context =
		FUNC0(CurrentMemoryContext, "Http Request", ALLOCSET_DEFAULT_SIZES);
	MemoryContext old = FUNC1(request_context);
	HttpRequest *req = FUNC2(sizeof(HttpRequest));

	req->context = request_context;
	FUNC3(req, method);

	FUNC1(old);
	return req;
}
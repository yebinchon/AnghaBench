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
struct TYPE_3__ {char* body; size_t body_len; int /*<<< orphan*/  context; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ HttpRequest ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 char* FUNC2 (size_t) ; 

void
FUNC3(HttpRequest *req, const char *body, size_t body_len)
{
	MemoryContext old = FUNC0(req->context);

	req->body = FUNC2(body_len + 1);
	FUNC1(req->body, body, body_len);
	req->body[body_len] = '\0';
	req->body_len = body_len;
	FUNC0(old);
}
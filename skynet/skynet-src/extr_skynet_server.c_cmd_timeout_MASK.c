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
struct skynet_context {char const* result; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int FUNC0 (struct skynet_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 int FUNC3 (char const*,char**,int) ; 

__attribute__((used)) static const char *
FUNC4(struct skynet_context * context, const char * param) {
	char * session_ptr = NULL;
	int ti = FUNC3(param, &session_ptr, 10);
	int session = FUNC0(context);
	FUNC1(context->handle, ti, session);
	FUNC2(context->result, "%d", session);
	return context->result;
}
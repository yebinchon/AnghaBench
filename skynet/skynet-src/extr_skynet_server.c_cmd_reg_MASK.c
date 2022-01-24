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
struct skynet_context {char const* result; int handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct skynet_context*,char*,char const*) ; 
 char const* FUNC1 (int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 

__attribute__((used)) static const char *
FUNC3(struct skynet_context * context, const char * param) {
	if (param == NULL || param[0] == '\0') {
		FUNC2(context->result, ":%x", context->handle);
		return context->result;
	} else if (param[0] == '.') {
		return FUNC1(context->handle, param + 1);
	} else {
		FUNC0(context, "Can't register global name %s in C", param);
		return NULL;
	}
}
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
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 struct skynet_context* FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 size_t FUNC3 (char const*) ; 
 char* FUNC4 (char**,char*) ; 

__attribute__((used)) static const char *
FUNC5(struct skynet_context * context, const char * param) {
	size_t sz = FUNC3(param);
	char tmp[sz+1];
	FUNC2(tmp,param);
	char * args = tmp;
	char * mod = FUNC4(&args, " \t\r\n");
	args = FUNC4(&args, "\r\n");
	struct skynet_context * inst = FUNC1(mod,args);
	if (inst == NULL) {
		return NULL;
	} else {
		FUNC0(context->result, inst->handle);
		return context->result;
	}
}
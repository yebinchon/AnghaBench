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
typedef  int uint32_t ;
struct skynet_context {char const* result; } ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 

__attribute__((used)) static const char *
FUNC2(struct skynet_context * context, const char * param) {
	if (param[0] == '.') {
		uint32_t handle = FUNC0(param+1);
		if (handle) {
			FUNC1(context->result, ":%x", handle);
			return context->result;
		}
	}
	return NULL;
}
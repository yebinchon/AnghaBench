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
typedef  scalar_t__ uint32_t ;
struct skynet_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct skynet_context*,char*,char*) ; 
 char const* FUNC1 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,char*,char*) ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static const char *
FUNC5(struct skynet_context * context, const char * param) {
	int size = FUNC3(param);
	char name[size+1];
	char handle[size+1];
	FUNC2(param,"%s %s",name,handle);
	if (handle[0] != ':') {
		return NULL;
	}
	uint32_t handle_id = FUNC4(handle+1, NULL, 16);
	if (handle_id == 0) {
		return NULL;
	}
	if (name[0] == '.') {
		return FUNC1(handle_id, name + 1);
	} else {
		FUNC0(context, "Can't set global name %s in C", name);
	}
	return NULL;
}
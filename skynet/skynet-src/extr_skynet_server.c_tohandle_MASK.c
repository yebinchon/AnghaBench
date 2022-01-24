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
typedef  int /*<<< orphan*/  uint32_t ;
struct skynet_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct skynet_context*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static uint32_t
FUNC3(struct skynet_context * context, const char * param) {
	uint32_t handle = 0;
	if (param[0] == ':') {
		handle = FUNC2(param+1, NULL, 16);
	} else if (param[0] == '.') {
		handle = FUNC1(param+1);
	} else {
		FUNC0(context, "Can't convert %s to handle",param);
	}

	return handle;
}
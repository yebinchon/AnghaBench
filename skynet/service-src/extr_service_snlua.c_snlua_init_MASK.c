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
struct snlua {int dummy; } ;
struct skynet_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTYPE_TAG_DONTCOPY ; 
 int /*<<< orphan*/  launch_cb ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct skynet_context*,struct snlua*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (struct skynet_context*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct skynet_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 

int
FUNC7(struct snlua *l, struct skynet_context *ctx, const char * args) {
	int sz = FUNC5(args);
	char * tmp = FUNC3(sz);
	FUNC0(tmp, args, sz);
	FUNC1(ctx, l , launch_cb);
	const char * self = FUNC2(ctx, "REG", NULL);
	uint32_t handle_id = FUNC6(self+1, NULL, 16);
	// it must be first message
	FUNC4(ctx, 0, handle_id, PTYPE_TAG_DONTCOPY,0, tmp, sz);
	return 0;
}
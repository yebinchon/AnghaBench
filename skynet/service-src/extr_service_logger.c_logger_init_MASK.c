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
struct skynet_context {int dummy; } ;
struct logger {int close; int /*<<< orphan*/ * handle; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  logger_cb ; 
 int /*<<< orphan*/  FUNC1 (struct skynet_context*,struct logger*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 

int
FUNC5(struct logger * inst, struct skynet_context *ctx, const char * parm) {
	if (parm) {
		inst->handle = FUNC0(parm,"w");
		if (inst->handle == NULL) {
			return 1;
		}
		inst->filename = FUNC2(FUNC4(parm)+1);
		FUNC3(inst->filename, parm);
		inst->close = 1;
	} else {
		inst->handle = stdout;
	}
	if (inst->handle) {
		FUNC1(ctx, inst, logger_cb);
		return 0;
	}
	return 1;
}
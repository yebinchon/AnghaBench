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
struct skynet_context {int /*<<< orphan*/ * logfile; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct skynet_context*) ; 
 struct skynet_context* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct skynet_context*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (struct skynet_context*,char const*) ; 

__attribute__((used)) static const char *
FUNC5(struct skynet_context * context, const char * param) {
	uint32_t handle = FUNC4(context, param);
	if (handle == 0)
		return NULL;
	struct skynet_context * ctx = FUNC2(handle);
	if (ctx == NULL)
		return NULL;
	FILE * f = ctx->logfile;
	if (f) {
		// logfile may close in other thread
		if (FUNC0(&ctx->logfile, f, NULL)) {
			FUNC3(context, f, handle);
		}
	}
	FUNC1(ctx);
	return NULL;
}
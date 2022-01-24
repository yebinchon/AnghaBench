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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct skynet_context*) ; 
 struct skynet_context* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (struct skynet_context*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct skynet_context*,char const*) ; 

__attribute__((used)) static const char *
FUNC6(struct skynet_context * context, const char * param) {
	uint32_t handle = FUNC5(context, param);
	if (handle == 0)
		return NULL;
	struct skynet_context * ctx = FUNC3(handle);
	if (ctx == NULL)
		return NULL;
	FILE *f = NULL;
	FILE * lastf = ctx->logfile;
	if (lastf == NULL) {
		f = FUNC4(context, handle);
		if (f) {
			if (!FUNC0(&ctx->logfile, NULL, f)) {
				// logfile opens in other thread, close this one.
				FUNC1(f);
			}
		}
	}
	FUNC2(ctx);
	return NULL;
}
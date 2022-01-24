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
struct skynet_context {int /*<<< orphan*/  instance; int /*<<< orphan*/  mod; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct skynet_context*) ; 
 struct skynet_context* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (char const*,char) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct skynet_context*,char const*) ; 

__attribute__((used)) static const char *
FUNC6(struct skynet_context * context, const char * param) {
	uint32_t handle = FUNC5(context, param);
	if (handle == 0)
		return NULL;
	struct skynet_context * ctx = FUNC1(handle);
	if (ctx == NULL)
		return NULL;
	param = FUNC3(param, ' ');
	int sig = 0;
	if (param) {
		sig = FUNC4(param, NULL, 0);
	}
	// NOTICE: the signal function should be thread safe.
	FUNC2(ctx->mod, ctx->instance, sig);

	FUNC0(ctx);
	return NULL;
}
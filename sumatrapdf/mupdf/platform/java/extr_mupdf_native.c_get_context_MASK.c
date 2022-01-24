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
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  base_context ; 
 int /*<<< orphan*/  context_key ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static fz_context *FUNC6(JNIEnv *env)
{
	fz_context *ctx = (fz_context *)
#ifdef _WIN32
		TlsGetValue(context_key);
#else
		FUNC4(context_key);
#endif

	if (ctx)
		return ctx;

	ctx = FUNC2(base_context);
	if (!ctx) { FUNC3(env, "failed to clone fz_context"); return NULL; }

#ifdef _WIN32
	TlsSetValue(context_key, ctx);
#else
	FUNC5(context_key, ctx);
#endif
	return ctx;
}
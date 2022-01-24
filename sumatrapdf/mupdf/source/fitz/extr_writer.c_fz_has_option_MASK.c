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

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char const**,char const**,char const*) ; 
 size_t FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,size_t) ; 

int
FUNC3(fz_context *ctx, const char *opts, const char *key, const char **val)
{
	const char *straw;
	size_t n = FUNC1(key);
	while ((opts = FUNC0(ctx, &straw, val, opts)))
		if (!FUNC2(straw, key, n) && (straw[n] == '=' || straw[n] == ',' || straw[n] == 0))
			return 1;
	return 0;
}
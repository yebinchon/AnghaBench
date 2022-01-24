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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  fz_stream ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

uint64_t FUNC2(fz_context *ctx, fz_stream *stm)
{
	int a = FUNC0(ctx, stm);
	int b = FUNC0(ctx, stm);
	int c = FUNC0(ctx, stm);
	int d = FUNC0(ctx, stm);
	int e = FUNC0(ctx, stm);
	int f = FUNC0(ctx, stm);
	int g = FUNC0(ctx, stm);
	int h = FUNC0(ctx, stm);
	if (a == EOF || b == EOF || c == EOF || d == EOF || e == EOF || f == EOF || g == EOF || h == EOF)
		FUNC1(ctx, FZ_ERROR_GENERIC, "premature end of file in int64");
	return ((uint64_t)a<<56) | ((uint64_t)b<<48) | ((uint64_t)c<<40) | ((uint64_t)d<<32)
		| ((uint64_t)e<<24) | ((uint64_t)f<<16) | ((uint64_t)g<<8) | ((uint64_t)h);
}
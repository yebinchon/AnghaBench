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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  fz_stream ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

uint32_t FUNC2(fz_context *ctx, fz_stream *stm)
{
	int a = FUNC0(ctx, stm);
	int b = FUNC0(ctx, stm);
	int c = FUNC0(ctx, stm);
	int d = FUNC0(ctx, stm);
	if (a == EOF || b == EOF || c == EOF || d == EOF)
		FUNC1(ctx, FZ_ERROR_GENERIC, "premature end of file in int32");
	return ((uint32_t)a) | ((uint32_t)b<<8) | ((uint32_t)c<<16) | ((uint32_t)d<<24);
}
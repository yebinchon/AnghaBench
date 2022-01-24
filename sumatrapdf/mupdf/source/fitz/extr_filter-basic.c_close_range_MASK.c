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
struct range_filter {struct range_filter* ranges; int /*<<< orphan*/  chain; } ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct range_filter*) ; 

__attribute__((used)) static void
FUNC2(fz_context *ctx, void *state_)
{
	struct range_filter *state = (struct range_filter *)state_;
	FUNC0(ctx, state->chain);
	FUNC1(ctx, state->ranges);
	FUNC1(ctx, state);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct concat_filter {scalar_t__ count; scalar_t__ max; TYPE_1__** chain; } ;
struct TYPE_5__ {scalar_t__ state; } ;
typedef  TYPE_1__ fz_stream ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

void
FUNC2(fz_context *ctx, fz_stream *concat, fz_stream *chain)
{
	struct concat_filter *state = (struct concat_filter *)concat->state;

	if (state->count == state->max)
	{
		FUNC0(ctx, chain);
		FUNC1(ctx, FZ_ERROR_GENERIC, "Concat filter size exceeded");
	}

	state->chain[state->count++] = chain;
}
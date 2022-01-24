#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct TYPE_3__* ref; struct TYPE_3__* out; struct TYPE_3__* in; int /*<<< orphan*/  chain; } ;
typedef  TYPE_1__ fz_predict ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(fz_context *ctx, void *state_)
{
	fz_predict *state = (fz_predict *)state_;
	FUNC0(ctx, state->chain);
	FUNC1(ctx, state->in);
	FUNC1(ctx, state->out);
	FUNC1(ctx, state->ref);
	FUNC1(ctx, state);
}
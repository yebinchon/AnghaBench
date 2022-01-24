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
struct TYPE_5__ {struct TYPE_5__* bp; int /*<<< orphan*/  state; int /*<<< orphan*/  (* drop ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;scalar_t__ close; } ;
typedef  TYPE_1__ fz_output ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__ fz_stdout_global ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(fz_context *ctx, fz_output *out)
{
	if (out)
	{
		if (out->close)
			FUNC1(ctx, "dropping unclosed output");
		if (out->drop)
			out->drop(ctx, out->state);
		FUNC0(ctx, out->bp);
		if (out != &fz_stdout_global)
			FUNC0(ctx, out);
	}
}
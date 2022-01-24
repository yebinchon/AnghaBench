#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  msg; } ;
struct TYPE_4__ {int /*<<< orphan*/  chain; TYPE_2__ z; } ;
typedef  TYPE_1__ fz_inflate_state ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int Z_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4(fz_context *ctx, void *state_)
{
	fz_inflate_state *state = (fz_inflate_state *)state_;
	int code;

	code = FUNC3(&state->z);
	if (code != Z_OK)
		FUNC2(ctx, "zlib error: inflateEnd: %s", state->z.msg);

	FUNC0(ctx, state->chain);
	FUNC1(ctx, state);
}
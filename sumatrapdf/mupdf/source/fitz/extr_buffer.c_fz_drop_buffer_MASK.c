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
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_5__ {struct TYPE_5__* data; int /*<<< orphan*/  shared; int /*<<< orphan*/  refs; } ;
typedef  TYPE_1__ fz_buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC2(fz_context *ctx, fz_buffer *buf)
{
	if (FUNC0(ctx, buf, &buf->refs))
	{
		if (!buf->shared)
			FUNC1(ctx, buf->data);
		FUNC1(ctx, buf);
	}
}
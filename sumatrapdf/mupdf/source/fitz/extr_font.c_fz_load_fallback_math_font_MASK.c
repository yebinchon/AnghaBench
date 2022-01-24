#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_font ;
struct TYPE_7__ {TYPE_1__* font; } ;
typedef  TYPE_2__ fz_context ;
struct TYPE_6__ {int /*<<< orphan*/ * math; } ;

/* Variables and functions */
 unsigned char* FUNC0 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,unsigned char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static fz_font *FUNC2(fz_context *ctx)
{
	const unsigned char *data;
	int size;
	if (!ctx->font->math)
	{
		data = FUNC0(ctx, &size);
		if (data)
			ctx->font->math = FUNC1(ctx, NULL, data, size, 0, 0);
	}
	return ctx->font->math;
}
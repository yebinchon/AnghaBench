#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_storable ;
struct TYPE_5__ {TYPE_3__* fn_vals; } ;
struct TYPE_6__ {TYPE_1__ f; } ;
struct TYPE_7__ {scalar_t__ type; int /*<<< orphan*/  buffer; TYPE_2__ u; int /*<<< orphan*/  colorspace; } ;
typedef  TYPE_3__ fz_shade ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 scalar_t__ FZ_FUNCTION_BASED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 

void
FUNC3(fz_context *ctx, fz_storable *shade_)
{
	fz_shade *shade = (fz_shade *)shade_;

	FUNC0(ctx, shade->colorspace);
	if (shade->type == FZ_FUNCTION_BASED)
		FUNC2(ctx, shade->u.f.fn_vals);
	FUNC1(ctx, shade->buffer);
	FUNC2(ctx, shade);
}
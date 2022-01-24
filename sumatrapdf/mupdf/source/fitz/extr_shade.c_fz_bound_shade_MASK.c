#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ type; int /*<<< orphan*/  bbox; int /*<<< orphan*/  matrix; } ;
typedef  TYPE_1__ fz_shade ;
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 scalar_t__ FZ_LINEAR ; 
 scalar_t__ FZ_RADIAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

fz_rect
FUNC4(fz_context *ctx, fz_shade *shade, fz_matrix ctm)
{
	ctm = FUNC1(shade->matrix, ctm);
	if (shade->type != FZ_LINEAR && shade->type != FZ_RADIAL)
	{
		fz_rect rect = FUNC0(ctx, shade);
		rect = FUNC2(rect, shade->bbox);
		return FUNC3(rect, ctm);
	}
	return FUNC3(shade->bbox, ctm);
}
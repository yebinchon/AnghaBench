#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_shade_process_fn ;
typedef  int /*<<< orphan*/  fz_shade_prepare_fn ;
struct TYPE_18__ {scalar_t__ use_function; scalar_t__ type; int /*<<< orphan*/  colorspace; } ;
typedef  TYPE_1__ fz_shade ;
typedef  int /*<<< orphan*/  fz_rect ;
struct TYPE_19__ {int ncomp; void* process_arg; int /*<<< orphan*/ * process; int /*<<< orphan*/ * prepare; TYPE_1__* shade; } ;
typedef  TYPE_2__ fz_mesh_processor ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 scalar_t__ FZ_FUNCTION_BASED ; 
 scalar_t__ FZ_LINEAR ; 
 scalar_t__ FZ_MESH_TYPE4 ; 
 scalar_t__ FZ_MESH_TYPE5 ; 
 scalar_t__ FZ_MESH_TYPE6 ; 
 scalar_t__ FZ_MESH_TYPE7 ; 
 scalar_t__ FZ_RADIAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__) ; 

void
FUNC9(fz_context *ctx, fz_shade *shade, fz_matrix ctm, fz_rect scissor,
		fz_shade_prepare_fn *prepare, fz_shade_process_fn *process, void *process_arg)
{
	fz_mesh_processor painter;

	painter.shade = shade;
	painter.prepare = prepare;
	painter.process = process;
	painter.process_arg = process_arg;
	painter.ncomp = (shade->use_function > 0 ? 1 : FUNC0(ctx, shade->colorspace));

	if (shade->type == FZ_FUNCTION_BASED)
		FUNC1(ctx, shade, ctm, &painter);
	else if (shade->type == FZ_LINEAR)
		FUNC2(ctx, shade, ctm, &painter, scissor);
	else if (shade->type == FZ_RADIAL)
		FUNC3(ctx, shade, ctm, &painter);
	else if (shade->type == FZ_MESH_TYPE4)
		FUNC4(ctx, shade, ctm, &painter);
	else if (shade->type == FZ_MESH_TYPE5)
		FUNC5(ctx, shade, ctm, &painter);
	else if (shade->type == FZ_MESH_TYPE6)
		FUNC6(ctx, shade, ctm, &painter);
	else if (shade->type == FZ_MESH_TYPE7)
		FUNC7(ctx, shade, ctm, &painter);
	else
		FUNC8(ctx, FZ_ERROR_GENERIC, "Unexpected mesh type %d\n", shade->type);
}
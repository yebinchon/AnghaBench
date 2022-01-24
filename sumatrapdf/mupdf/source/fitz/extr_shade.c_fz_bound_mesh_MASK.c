#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ type; } ;
typedef  TYPE_1__ fz_shade ;
typedef  int /*<<< orphan*/  fz_rect ;
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static fz_rect
FUNC5(fz_context *ctx, fz_shade *shade)
{
	if (shade->type == FZ_FUNCTION_BASED)
		return FUNC0(ctx, shade);
	else if (shade->type == FZ_LINEAR)
		return FUNC1(ctx, shade);
	else if (shade->type == FZ_RADIAL)
		return FUNC2(ctx, shade);
	else if (shade->type == FZ_MESH_TYPE4 ||
		shade->type == FZ_MESH_TYPE5 ||
		shade->type == FZ_MESH_TYPE6 ||
		shade->type == FZ_MESH_TYPE7)
		return FUNC3(ctx, shade);
	else
		FUNC4(ctx, FZ_ERROR_GENERIC, "Unexpected mesh type %d\n", shade->type);
}
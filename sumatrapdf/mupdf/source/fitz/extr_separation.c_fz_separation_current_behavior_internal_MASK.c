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
struct TYPE_4__ {int num_separations; } ;
typedef  TYPE_1__ fz_separations ;
typedef  int /*<<< orphan*/  fz_separation_behavior ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,int) ; 

fz_separation_behavior FUNC2(fz_context *ctx, const fz_separations *sep, int separation)
{
	if (!sep || separation < 0 || separation >= sep->num_separations)
		FUNC0(ctx, FZ_ERROR_GENERIC, "can't disable non-existent separation");

	return FUNC1(sep, separation);
}
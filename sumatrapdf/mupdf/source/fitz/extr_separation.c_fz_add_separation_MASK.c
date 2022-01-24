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
struct TYPE_3__ {int num_separations; int* cs_pos; int /*<<< orphan*/ * cs; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ fz_separations ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int FZ_MAX_SEPARATIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

void FUNC3(fz_context *ctx, fz_separations *sep, const char *name, fz_colorspace *cs, int colorant)
{
	int n;

	if (!sep)
		FUNC2(ctx, FZ_ERROR_GENERIC, "can't add to non-existent separations");

	n = sep->num_separations;
	if (n == FZ_MAX_SEPARATIONS)
		FUNC2(ctx, FZ_ERROR_GENERIC, "too many separations");

	sep->name[n] = FUNC1(ctx, name);
	sep->cs[n] = FUNC0(ctx, cs);
	sep->cs_pos[n] = colorant;

	sep->num_separations++;
}
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
struct TYPE_3__ {int /*<<< orphan*/ * t3procs; int /*<<< orphan*/ * t3resources; int /*<<< orphan*/  t3doc; int /*<<< orphan*/  (* t3freeres ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ fz_font ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(fz_context *ctx, fz_font *font)
{
	int i;

	if (font->t3resources)
	{
		font->t3freeres(ctx, font->t3doc, font->t3resources);
		font->t3resources = NULL;
	}

	if (font->t3procs)
	{
		for (i = 0; i < 256; i++)
			FUNC0(ctx, font->t3procs[i]);
	}
	FUNC1(ctx, font->t3procs);
	font->t3procs = NULL;
}
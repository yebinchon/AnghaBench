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
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  pdf_document ;
struct TYPE_5__ {int x1; int y1; int* c1; int vprow; int bpflag; int bpcoord; int bpcomp; void** c0; void* y0; void* x0; } ;
struct TYPE_6__ {TYPE_1__ m; } ;
struct TYPE_7__ {int type; TYPE_2__ u; } ;
typedef  TYPE_3__ fz_shade ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  BitsPerComponent ; 
 int /*<<< orphan*/  BitsPerCoordinate ; 
 int /*<<< orphan*/  BitsPerFlag ; 
 int /*<<< orphan*/  Decode ; 
 int FZ_MAX_COLORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VerticesPerRow ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(fz_context *ctx, pdf_document *doc, fz_shade *shade, pdf_obj *dict)
{
	pdf_obj *obj;
	int i, n;

	shade->u.m.x0 = shade->u.m.y0 = 0;
	shade->u.m.x1 = shade->u.m.y1 = 1;
	for (i = 0; i < FZ_MAX_COLORS; i++)
	{
		shade->u.m.c0[i] = 0;
		shade->u.m.c1[i] = 1;
	}

	shade->u.m.vprow = FUNC6(ctx, dict, FUNC0(VerticesPerRow));
	shade->u.m.bpflag = FUNC6(ctx, dict, FUNC0(BitsPerFlag));
	shade->u.m.bpcoord = FUNC6(ctx, dict, FUNC0(BitsPerCoordinate));
	shade->u.m.bpcomp = FUNC6(ctx, dict, FUNC0(BitsPerComponent));

	obj = FUNC5(ctx, dict, FUNC0(Decode));
	if (FUNC4(ctx, obj) >= 6)
	{
		n = FUNC1(FZ_MAX_COLORS, (FUNC4(ctx, obj) - 4) / 2);
		shade->u.m.x0 = FUNC3(ctx, obj, 0);
		shade->u.m.x1 = FUNC3(ctx, obj, 1);
		shade->u.m.y0 = FUNC3(ctx, obj, 2);
		shade->u.m.y1 = FUNC3(ctx, obj, 3);
		for (i = 0; i < n; i++)
		{
			shade->u.m.c0[i] = FUNC3(ctx, obj, 4 + i * 2);
			shade->u.m.c1[i] = FUNC3(ctx, obj, 5 + i * 2);
		}
	}

	if (shade->u.m.vprow < 2 && shade->type == 5)
	{
		FUNC2(ctx, "Too few vertices per row (%d)", shade->u.m.vprow);
		shade->u.m.vprow = 2;
	}

	if (shade->u.m.bpflag != 2 && shade->u.m.bpflag != 4 && shade->u.m.bpflag != 8 &&
		shade->type != 5)
	{
		FUNC2(ctx, "Invalid number of bits per flag (%d)", shade->u.m.bpflag);
		shade->u.m.bpflag = 8;
	}

	if (shade->u.m.bpcoord != 1 && shade->u.m.bpcoord != 2 && shade->u.m.bpcoord != 4 &&
		shade->u.m.bpcoord != 8 && shade->u.m.bpcoord != 12 && shade->u.m.bpcoord != 16 &&
		shade->u.m.bpcoord != 24 && shade->u.m.bpcoord != 32)
	{
		FUNC2(ctx, "Invalid number of bits per coordinate (%d)", shade->u.m.bpcoord);
		shade->u.m.bpcoord = 8;
	}

	if (shade->u.m.bpcomp != 1 && shade->u.m.bpcomp != 2 && shade->u.m.bpcomp != 4 &&
		shade->u.m.bpcomp != 8 && shade->u.m.bpcomp != 12 && shade->u.m.bpcomp != 16)
	{
		FUNC2(ctx, "Invalid number of bits per component (%d)", shade->u.m.bpcomp);
		shade->u.m.bpcomp = 8;
	}
}
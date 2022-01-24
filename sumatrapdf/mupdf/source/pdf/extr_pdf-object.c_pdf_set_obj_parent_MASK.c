#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
struct TYPE_16__ {int kind; } ;
typedef  TYPE_1__ pdf_obj ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_15__ {int parent_num; } ;
struct TYPE_14__ {int parent_num; } ;

/* Variables and functions */
 TYPE_12__* FUNC0 (TYPE_1__*) ; 
 TYPE_10__* FUNC1 (TYPE_1__*) ; 
#define  PDF_ARRAY 129 
#define  PDF_DICT 128 
 TYPE_1__* PDF_LIMIT ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC6(fz_context *ctx, pdf_obj *obj, int num)
{
	int n, i;

	if (obj < PDF_LIMIT)
		return;

	switch (obj->kind)
	{
	case PDF_ARRAY:
		FUNC0(obj)->parent_num = num;
		n = FUNC3(ctx, obj);
		for (i = 0; i < n; i++)
			FUNC6(ctx, FUNC2(ctx, obj, i), num);
		break;
	case PDF_DICT:
		FUNC1(obj)->parent_num = num;
		n = FUNC5(ctx, obj);
		for (i = 0; i < n; i++)
			FUNC6(ctx, FUNC4(ctx, obj, i), num);
		break;
	}
}
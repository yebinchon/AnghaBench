#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_18__ ;
typedef  struct TYPE_22__   TYPE_16__ ;
typedef  struct TYPE_21__   TYPE_14__ ;
typedef  struct TYPE_20__   TYPE_12__ ;

/* Type definitions */
struct TYPE_26__ {scalar_t__ kind; } ;
typedef  TYPE_3__ pdf_obj ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_28__ {int num; int gen; } ;
struct TYPE_27__ {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct TYPE_25__ {TYPE_3__* v; TYPE_3__* k; } ;
struct TYPE_24__ {int i; int /*<<< orphan*/  f; } ;
struct TYPE_23__ {int len; TYPE_3__** items; } ;
struct TYPE_22__ {int len; TYPE_2__* items; } ;
struct TYPE_21__ {int /*<<< orphan*/  n; } ;
struct TYPE_20__ {TYPE_1__ u; } ;

/* Variables and functions */
 TYPE_18__* FUNC0 (TYPE_3__*) ; 
 TYPE_16__* FUNC1 (TYPE_3__*) ; 
 TYPE_14__* FUNC2 (TYPE_3__*) ; 
 TYPE_12__* FUNC3 (TYPE_3__*) ; 
#define  PDF_ARRAY 134 
#define  PDF_DICT 133 
 TYPE_3__* PDF_FALSE ; 
#define  PDF_INDIRECT 132 
#define  PDF_INT 131 
 TYPE_3__* PDF_LIMIT ; 
#define  PDF_NAME 130 
 int /*<<< orphan*/ * PDF_NAME_LIST ; 
#define  PDF_REAL 129 
#define  PDF_STRING 128 
 TYPE_8__* FUNC4 (TYPE_3__*) ; 
 TYPE_6__* FUNC5 (TYPE_3__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC8(fz_context *ctx, pdf_obj *a, pdf_obj *b)
{
	int i;

	if (a == b)
		return 0;

	/* a or b is null, true, or false */
	if (a <= PDF_FALSE || b <= PDF_FALSE)
		return 1;

	/* a is a constant name */
	if (a < PDF_LIMIT)
	{
		if (b < PDF_LIMIT)
			return a != b;
		if (b->kind != PDF_NAME)
			return 1;
		return FUNC7(PDF_NAME_LIST[(intptr_t)a], FUNC2(b)->n);
	}

	/* b is a constant name */
	if (b < PDF_LIMIT)
	{
		if (a->kind != PDF_NAME)
			return 1;
		return FUNC7(FUNC2(a)->n, PDF_NAME_LIST[(intptr_t)b]);
	}

	/* both a and b are allocated objects */
	if (a->kind != b->kind)
		return 1;

	switch (a->kind)
	{
	case PDF_INT:
		return FUNC3(a)->u.i - FUNC3(b)->u.i;

	case PDF_REAL:
		if (FUNC3(a)->u.f < FUNC3(b)->u.f)
			return -1;
		if (FUNC3(a)->u.f > FUNC3(b)->u.f)
			return 1;
		return 0;

	case PDF_STRING:
		if (FUNC5(a)->len < FUNC5(b)->len)
		{
			if (FUNC6(FUNC5(a)->buf, FUNC5(b)->buf, FUNC5(a)->len) <= 0)
				return -1;
			return 1;
		}
		if (FUNC5(a)->len > FUNC5(b)->len)
		{
			if (FUNC6(FUNC5(a)->buf, FUNC5(b)->buf, FUNC5(b)->len) >= 0)
				return 1;
			return -1;
		}
		return FUNC6(FUNC5(a)->buf, FUNC5(b)->buf, FUNC5(a)->len);

	case PDF_NAME:
		return FUNC7(FUNC2(a)->n, FUNC2(b)->n);

	case PDF_INDIRECT:
		if (FUNC4(a)->num == FUNC4(b)->num)
			return FUNC4(a)->gen - FUNC4(b)->gen;
		return FUNC4(a)->num - FUNC4(b)->num;

	case PDF_ARRAY:
		if (FUNC0(a)->len != FUNC0(b)->len)
			return FUNC0(a)->len - FUNC0(b)->len;
		for (i = 0; i < FUNC0(a)->len; i++)
			if (FUNC8(ctx, FUNC0(a)->items[i], FUNC0(b)->items[i]))
				return 1;
		return 0;

	case PDF_DICT:
		if (FUNC1(a)->len != FUNC1(b)->len)
			return FUNC1(a)->len - FUNC1(b)->len;
		for (i = 0; i < FUNC1(a)->len; i++)
		{
			if (FUNC8(ctx, FUNC1(a)->items[i].k, FUNC1(b)->items[i].k))
				return 1;
			if (FUNC8(ctx, FUNC1(a)->items[i].v, FUNC1(b)->items[i].v))
				return 1;
		}
		return 0;
	}
	return 1;
}
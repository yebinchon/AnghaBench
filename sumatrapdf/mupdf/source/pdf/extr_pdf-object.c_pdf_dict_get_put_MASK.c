#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_23__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_17__ ;

/* Type definitions */
struct keyval {int dummy; } ;
struct TYPE_26__ {int flags; } ;
typedef  TYPE_1__ pdf_obj ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_27__ {int len; int cap; TYPE_17__* items; } ;
struct TYPE_25__ {TYPE_1__* v; void* k; } ;

/* Variables and functions */
 TYPE_23__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int PDF_FLAGS_SORTED ; 
 TYPE_1__* PDF_LIMIT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_17__*,TYPE_17__*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 void* FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC15(fz_context *ctx, pdf_obj *obj, pdf_obj *key, pdf_obj *val, pdf_obj **old_val)
{
	int i;

	if (old_val)
		*old_val = NULL;

	FUNC3(obj);
	if (!FUNC1(obj))
		FUNC4(ctx, FZ_ERROR_GENERIC, "not a dict (%s)", FUNC11(obj));
	if (!FUNC2(key))
		FUNC4(ctx, FZ_ERROR_GENERIC, "key is not a name (%s)", FUNC11(obj));

	if (FUNC0(obj)->len > 100 && !(obj->flags & PDF_FLAGS_SORTED))
		FUNC12(ctx, obj);

	if (key < PDF_LIMIT)
		i = FUNC6(ctx, obj, key);
	else
		i = FUNC7(ctx, obj, FUNC13(ctx, key));

	FUNC14(ctx, obj, val);

	if (i >= 0 && i < FUNC0(obj)->len)
	{
		if (FUNC0(obj)->items[i].v != val)
		{
			pdf_obj *d = FUNC0(obj)->items[i].v;
			FUNC0(obj)->items[i].v = FUNC10(ctx, val);
			if (old_val)
				*old_val = d;
			else
				FUNC9(ctx, d);
		}
	}
	else
	{
		if (FUNC0(obj)->len + 1 > FUNC0(obj)->cap)
			FUNC8(ctx, obj);

		i = -1-i;
		if ((obj->flags & PDF_FLAGS_SORTED) && FUNC0(obj)->len > 0)
			FUNC5(&FUNC0(obj)->items[i + 1],
					&FUNC0(obj)->items[i],
					(FUNC0(obj)->len - i) * sizeof(struct keyval));

		FUNC0(obj)->items[i].k = FUNC10(ctx, key);
		FUNC0(obj)->items[i].v = FUNC10(ctx, val);
		FUNC0(obj)->len ++;
	}
}
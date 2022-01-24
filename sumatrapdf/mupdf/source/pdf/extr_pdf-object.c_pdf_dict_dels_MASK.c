#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ pdf_obj ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_13__ {int len; TYPE_1__* items; } ;
struct TYPE_11__ {int /*<<< orphan*/  v; int /*<<< orphan*/  k; } ;

/* Variables and functions */
 TYPE_9__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  PDF_FLAGS_SORTED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 

void
FUNC8(fz_context *ctx, pdf_obj *obj, const char *key)
{
	int i;

	FUNC2(obj);
	if (!FUNC1(obj))
		FUNC3(ctx, FZ_ERROR_GENERIC, "not a dict (%s)", FUNC6(obj));
	if (!key)
		FUNC3(ctx, FZ_ERROR_GENERIC, "key is null");

	FUNC7(ctx, obj, NULL);
	i = FUNC4(ctx, obj, key);
	if (i >= 0)
	{
		FUNC5(ctx, FUNC0(obj)->items[i].k);
		FUNC5(ctx, FUNC0(obj)->items[i].v);
		obj->flags &= ~PDF_FLAGS_SORTED;
		FUNC0(obj)->items[i] = FUNC0(obj)->items[FUNC0(obj)->len-1];
		FUNC0(obj)->len --;
	}
}
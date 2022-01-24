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
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_3__ {int /*<<< orphan*/  new_rdb; int /*<<< orphan*/  old_rdb; } ;
typedef  TYPE_1__ pdf_filter_processor ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(fz_context *ctx, pdf_filter_processor *p, pdf_obj *key, const char *name)
{
	pdf_obj *res, *obj;

	if (!name || name[0] == 0)
		return;

	res = FUNC0(ctx, p->old_rdb, key);
	obj = FUNC1(ctx, res, name);
	if (obj)
	{
		res = FUNC0(ctx, p->new_rdb, key);
		if (!res)
		{
			res = FUNC5(ctx, FUNC4(ctx, p->new_rdb), 1);
			FUNC2(ctx, p->new_rdb, key, res);
		}
		FUNC3(ctx, res, name, obj);
	}
}
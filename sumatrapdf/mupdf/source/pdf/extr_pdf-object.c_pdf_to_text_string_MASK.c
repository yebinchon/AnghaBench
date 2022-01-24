#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_2__ {char const* text; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 char const* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

const char *FUNC4(fz_context *ctx, pdf_obj *obj)
{
	FUNC1(obj);
	if (FUNC0(obj))
	{
		if (!FUNC2(obj)->text)
			FUNC2(obj)->text = FUNC3(ctx, FUNC2(obj)->buf, FUNC2(obj)->len);
		return FUNC2(obj)->text;
	}
	return "";
}
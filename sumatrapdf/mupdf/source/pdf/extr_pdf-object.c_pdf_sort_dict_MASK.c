#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct keyval {int dummy; } ;
struct TYPE_7__ {int flags; } ;
typedef  TYPE_1__ pdf_obj ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  items; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int PDF_FLAGS_SORTED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  keyvalcmp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void
FUNC4(fz_context *ctx, pdf_obj *obj)
{
	FUNC2(obj);
	if (!FUNC1(obj))
		return;
	if (!(obj->flags & PDF_FLAGS_SORTED))
	{
		FUNC3(FUNC0(obj)->items, FUNC0(obj)->len, sizeof(struct keyval), keyvalcmp);
		obj->flags |= PDF_FLAGS_SORTED;
	}
}
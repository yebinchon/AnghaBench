#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  pdf_function ;
typedef  int /*<<< orphan*/  pdf_document ;
struct TYPE_8__ {int /*<<< orphan*/ * c1; int /*<<< orphan*/ * c0; } ;
struct TYPE_7__ {TYPE_2__ m; } ;
struct TYPE_9__ {int /*<<< orphan*/  buffer; TYPE_1__ u; } ;
typedef  TYPE_3__ fz_shade ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(fz_context *ctx, pdf_document *doc, fz_shade *shade, pdf_obj *dict, int funcs, pdf_function **func)
{
	FUNC1(ctx, doc, shade, dict);

	if (funcs > 0)
		FUNC2(ctx, shade, funcs, func, shade->u.m.c0[0], shade->u.m.c1[0]);

	shade->buffer = FUNC0(ctx, doc, FUNC3(ctx, dict));
}
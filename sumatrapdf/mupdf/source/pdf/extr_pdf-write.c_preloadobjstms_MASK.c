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
typedef  int /*<<< orphan*/  pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_2__ {char type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(fz_context *ctx, pdf_document *doc)
{
	pdf_obj *obj;
	int num;

	/* xref_len may change due to repair, so check it every iteration */
	for (num = 0; num < FUNC3(ctx, doc); num++)
	{
		if (FUNC1(ctx, doc, num)->type == 'o')
		{
			obj = FUNC2(ctx, doc, num);
			FUNC0(ctx, obj);
		}
	}
}
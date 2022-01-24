#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int len; struct TYPE_6__* ocgs; int /*<<< orphan*/  obj; int /*<<< orphan*/  intent; } ;
typedef  TYPE_1__ pdf_ocg_descriptor ;
struct TYPE_7__ {TYPE_1__* ocg; } ;
typedef  TYPE_2__ pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(fz_context *ctx, pdf_document *doc)
{
	pdf_ocg_descriptor *desc;
	int i;

	if (!doc)
		return;
	desc = doc->ocg;
	if (!desc)
		return;

	FUNC0(ctx, desc);
	FUNC2(ctx, desc->intent);
	for (i = 0; i < desc->len; i++)
		FUNC2(ctx, desc->ocgs[i].obj);
	FUNC1(ctx, desc->ocgs);
	FUNC1(ctx, desc);
}
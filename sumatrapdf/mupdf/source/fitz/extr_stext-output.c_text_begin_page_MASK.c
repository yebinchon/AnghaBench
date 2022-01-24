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
struct TYPE_2__ {int /*<<< orphan*/  opts; int /*<<< orphan*/ * page; int /*<<< orphan*/  number; } ;
typedef  TYPE_1__ fz_text_writer ;
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_document_writer ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static fz_device *
FUNC3(fz_context *ctx, fz_document_writer *wri_, fz_rect mediabox)
{
	fz_text_writer *wri = (fz_text_writer*)wri_;

	if (wri->page)
	{
		FUNC0(ctx, wri->page);
		wri->page = NULL;
	}

	wri->number++;

	wri->page = FUNC2(ctx, mediabox);
	return FUNC1(ctx, wri->page, &wri->opts);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int list_len; TYPE_3__* page_object_lists; } ;
typedef  TYPE_1__ pdf_write_state ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_6__ {int len; int /*<<< orphan*/ * page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__**,int) ; 

__attribute__((used)) static void
FUNC3(fz_context *ctx, pdf_write_state *opts, int page, int object)
{
	FUNC2(ctx, &opts->page_object_lists, page+1);
	if (object >= opts->list_len)
		FUNC0(ctx, opts, object);
	if (opts->page_object_lists->len < page+1)
		opts->page_object_lists->len = page+1;
	FUNC1(ctx, &opts->page_object_lists->page[page], object);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_3__* utf8; } ;
struct TYPE_6__ {TYPE_3__* utf8; } ;
struct TYPE_8__ {int /*<<< orphan*/  mcid_obj; TYPE_2__ actualtext; TYPE_1__ alt; int /*<<< orphan*/  cooked; int /*<<< orphan*/  raw; scalar_t__ bdc; struct TYPE_8__* tag; struct TYPE_8__* prev; } ;
typedef  TYPE_3__ tag_record ;
typedef  int /*<<< orphan*/  pdf_filter_processor ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(fz_context *ctx, pdf_filter_processor *p, tag_record **tags)
{
	tag_record *tag = *tags;

	if (tag == NULL)
		return;
	*tags = tag->prev;
	FUNC0(ctx, tag->tag);
	if (tag->bdc)
	{
		FUNC1(ctx, tag->raw);
		FUNC1(ctx, tag->cooked);
	}
	FUNC0(ctx, tag->alt.utf8);
	FUNC0(ctx, tag->actualtext.utf8);
	FUNC1(ctx, tag->mcid_obj);
	FUNC0(ctx, tag);
}
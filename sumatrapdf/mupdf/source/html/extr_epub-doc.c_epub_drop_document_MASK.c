#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_document ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_5__ {int /*<<< orphan*/  most_recent_html; TYPE_2__* dc_creator; TYPE_2__* dc_title; int /*<<< orphan*/  outline; int /*<<< orphan*/  set; int /*<<< orphan*/  zip; int /*<<< orphan*/  accel; TYPE_2__* spine; } ;
typedef  TYPE_1__ epub_document ;
struct TYPE_6__ {struct TYPE_6__* path; struct TYPE_6__* next; } ;
typedef  TYPE_2__ epub_chapter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC7(fz_context *ctx, fz_document *doc_)
{
	epub_document *doc = (epub_document*)doc_;
	epub_chapter *ch, *next;
	ch = doc->spine;
	while (ch)
	{
		next = ch->next;
		FUNC5(ctx, ch->path);
		FUNC5(ctx, ch);
		ch = next;
	}
	FUNC0(ctx, doc->accel);
	FUNC1(ctx, doc->zip);
	FUNC3(ctx, doc->set);
	FUNC4(ctx, doc->outline);
	FUNC5(ctx, doc->dc_title);
	FUNC5(ctx, doc->dc_creator);
	FUNC2(ctx, doc->most_recent_html);
	FUNC6(ctx, doc);
}
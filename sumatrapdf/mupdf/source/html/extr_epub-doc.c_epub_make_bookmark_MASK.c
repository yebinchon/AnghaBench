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
struct TYPE_7__ {int chapter; int /*<<< orphan*/  page; } ;
typedef  TYPE_1__ fz_location ;
typedef  int /*<<< orphan*/  fz_html ;
typedef  int /*<<< orphan*/  fz_document ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_bookmark ;
struct TYPE_8__ {TYPE_3__* spine; } ;
typedef  TYPE_2__ epub_document ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
typedef  TYPE_3__ epub_chapter ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static fz_bookmark
FUNC3(fz_context *ctx, fz_document *doc_, fz_location loc)
{
	epub_document *doc = (epub_document*)doc_;
	epub_chapter *ch;
	int i;

	for (i = 0, ch = doc->spine; ch; ++i, ch = ch->next)
	{
		if (i == loc.chapter)
		{
			fz_html *html = FUNC0(ctx, doc, ch);
			fz_bookmark mark = FUNC2(ctx, html, loc.page);
			FUNC1(ctx, html);
			return mark;
		}
	}

	return 0;
}
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
struct TYPE_2__ {int* nesting_bounds; } ;
struct html_renderopt {int flags; TYPE_1__ toc_data; } ;
struct buf {scalar_t__ size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf*,char*) ; 
 int HTML_TOC ; 
 int /*<<< orphan*/  FUNC1 (struct buf*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*,struct buf const*) ; 

__attribute__((used)) static void
FUNC5(struct buf *ob, const struct buf *text, int level, void *opaque)
{
	struct html_renderopt *options = opaque;

	if (ob->size)
		FUNC3(ob, '\n');

	if ((options->flags & HTML_TOC) && level >= options->toc_data.nesting_bounds[0] &&
	     level <= options->toc_data.nesting_bounds[1]) {
		FUNC1(ob, "<h%d id=\"", level);
		FUNC4(ob, text);
		FUNC0(ob, "\">");
	}
	else
		FUNC1(ob, "<h%d>", level);

	if (text) FUNC2(ob, text->data, text->size);
	FUNC1(ob, "</h%d>\n", level);
}
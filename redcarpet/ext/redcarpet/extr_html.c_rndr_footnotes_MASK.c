#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct html_renderopt {int dummy; } ;
struct buf {scalar_t__ size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf*,char*) ; 
 scalar_t__ FUNC1 (struct html_renderopt*) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*,char*) ; 

__attribute__((used)) static void
FUNC5(struct buf *ob, const struct buf *text, void *opaque)
{
	struct html_renderopt *options = opaque;

	if (ob->size) FUNC3(ob, '\n');

	FUNC0(ob, "<div class=\"footnotes\">\n");
	FUNC4(ob, FUNC1(options) ? "<hr/>\n" : "<hr>\n");
	FUNC0(ob, "<ol>\n");

	if (text)
		FUNC2(ob, text->data, text->size);

	FUNC0(ob, "\n</ol>\n</div>\n");
}
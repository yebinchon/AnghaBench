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
struct html_renderopt {int flags; } ;
struct buf {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf*,char*) ; 
 int HTML_PRETTIFY ; 
 int /*<<< orphan*/  FUNC1 (struct buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct buf *ob, const struct buf *text, void *opaque)
{
	struct html_renderopt *options = opaque;
	if (options->flags & HTML_PRETTIFY)
		FUNC0(ob, "<code class=\"prettyprint\">");
	else
		FUNC0(ob, "<code>");
	if (text) FUNC1(ob, text->data, text->size);
	FUNC0(ob, "</code>");
	return 1;
}
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
struct buf {size_t size; char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf*,char*) ; 
 int HTML_HARD_WRAP ; 
 int /*<<< orphan*/  FUNC1 (struct buf*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*,char) ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*,void*) ; 

__attribute__((used)) static void
FUNC5(struct buf *ob, const struct buf *text, void *opaque)
{
	struct html_renderopt *options = opaque;
	size_t i = 0;

	if (ob->size) FUNC2(ob, '\n');

	if (!text || !text->size)
		return;

	while (i < text->size && FUNC3(text->data[i])) i++;

	if (i == text->size)
		return;

	FUNC0(ob, "<p>");
	if (options->flags & HTML_HARD_WRAP) {
		size_t org;
		while (i < text->size) {
			org = i;
			while (i < text->size && text->data[i] != '\n')
				i++;

			if (i > org)
				FUNC1(ob, text->data + org, i - org);

			/*
			 * do not insert a line break if this newline
			 * is the last character on the paragraph
			 */
			if (i >= text->size - 1)
				break;

			FUNC4(ob, opaque);
			i++;
		}
	} else {
		FUNC1(ob, &text->data[i], text->size - i);
	}
	FUNC0(ob, "</p>\n");
}
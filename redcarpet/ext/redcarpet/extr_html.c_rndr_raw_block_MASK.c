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
 int HTML_SKIP_STYLE ; 
 int /*<<< orphan*/  FUNC0 (struct buf*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct buf*,char) ; 
 scalar_t__ FUNC2 (char*,size_t,char*) ; 

__attribute__((used)) static void
FUNC3(struct buf *ob, const struct buf *text, void *opaque)
{
	size_t org, size;
	struct html_renderopt *options = opaque;

	if (!text)
		return;

	size = text->size;
	while (size > 0 && text->data[size - 1] == '\n')
		size--;

	for (org = 0; org < size && text->data[org] == '\n'; ++org)

	if (org >= size)
		return;

	/* Remove style tags if the `:no_styles` option is enabled */
	if ((options->flags & HTML_SKIP_STYLE) != 0 &&
		FUNC2(text->data, size, "style"))
		return;

	if (ob->size)
		FUNC1(ob, '\n');

	FUNC0(ob, text->data + org, size - org);
	FUNC1(ob, '\n');
}
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
 int HTML_PRETTIFY ; 
 int /*<<< orphan*/  FUNC1 (struct buf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*,char*,size_t) ; 
 scalar_t__ FUNC3 (char) ; 

__attribute__((used)) static void
FUNC4(struct buf *ob, const struct buf *text, const struct buf *lang, void *opaque)
{
	struct html_renderopt *options = opaque;

	if (ob->size) FUNC1(ob, '\n');

	if (lang && lang->size) {
		size_t i, cls;
		if (options->flags & HTML_PRETTIFY) {
			FUNC0(ob, "<pre><code class=\"prettyprint lang-");
			cls++;
		} else {
			FUNC0(ob, "<pre><code class=\"");
		}

		for (i = 0, cls = 0; i < lang->size; ++i, ++cls) {
			while (i < lang->size && FUNC3(lang->data[i]))
				i++;

			if (i < lang->size) {
				size_t org = i;
				while (i < lang->size && !FUNC3(lang->data[i]))
					i++;

				if (lang->data[org] == '.')
					org++;

				if (cls) FUNC1(ob, ' ');
				FUNC2(ob, lang->data + org, i - org);
			}
		}

		FUNC0(ob, "\">");
	} else if (options->flags & HTML_PRETTIFY) {
		FUNC0(ob, "<pre><code class=\"prettyprint\">");
	} else {
		FUNC0(ob, "<pre><code>");
	}

	if (text)
		FUNC2(ob, text->data, text->size);

	FUNC0(ob, "</code></pre>\n");
}
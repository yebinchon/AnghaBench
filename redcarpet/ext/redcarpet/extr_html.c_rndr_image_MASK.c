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
struct buf {scalar_t__ size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf*,char*) ; 
 int HTML_SAFELINK ; 
 scalar_t__ FUNC1 (struct html_renderopt*) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct buf *ob, const struct buf *link, const struct buf *title, const struct buf *alt, void *opaque)
{
	struct html_renderopt *options = opaque;

	if (link != NULL && (options->flags & HTML_SAFELINK) != 0 && !FUNC5(link->data, link->size))
		return 0;

	FUNC0(ob, "<img src=\"");

	if (link && link->size)
		FUNC3(ob, link->data, link->size);

	FUNC0(ob, "\" alt=\"");

	if (alt && alt->size)
		FUNC4(ob, alt->data, alt->size);

	if (title && title->size) {
		FUNC0(ob, "\" title=\"");
		FUNC4(ob, title->data, title->size);
	}

	FUNC2(ob, FUNC1(options) ? "\"/>" : "\">");
	return 1;
}
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
struct html_renderopt {int flags; int /*<<< orphan*/  (* link_attributes ) (struct buf*,struct buf const*,void*) ;} ;
struct buf {scalar_t__ size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf*,char*) ; 
 int HTML_SAFELINK ; 
 int /*<<< orphan*/  FUNC1 (struct buf*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct buf*,struct buf const*,void*) ; 

__attribute__((used)) static int
FUNC7(struct buf *ob, const struct buf *link, const struct buf *title, const struct buf *content, void *opaque)
{
	struct html_renderopt *options = opaque;

	if (link != NULL && (options->flags & HTML_SAFELINK) != 0 && !FUNC5(link->data, link->size))
		return 0;

	FUNC0(ob, "<a href=\"");

	if (link && link->size)
		FUNC3(ob, link->data, link->size);

	if (title && title->size) {
		FUNC0(ob, "\" title=\"");
		FUNC4(ob, title->data, title->size);
	}

	if (options->link_attributes) {
		FUNC2(ob, '\"');
		options->link_attributes(ob, link, opaque);
		FUNC2(ob, '>');
	} else {
		FUNC0(ob, "\">");
	}

	if (content && content->size) FUNC1(ob, content->data, content->size);
	FUNC0(ob, "</a>");
	return 1;
}
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
struct buf {scalar_t__ size; scalar_t__ data; } ;
typedef  enum mkd_autolink { ____Placeholder_mkd_autolink } mkd_autolink ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf*,char*) ; 
 int HTML_SAFELINK ; 
 int MKDA_EMAIL ; 
 scalar_t__ FUNC1 (struct buf const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct buf*,struct buf const*,void*) ; 

__attribute__((used)) static int
FUNC7(struct buf *ob, const struct buf *link, enum mkd_autolink type, void *opaque)
{
	struct html_renderopt *options = opaque;

	if (!link || !link->size)
		return 0;

	if ((options->flags & HTML_SAFELINK) != 0 &&
		!FUNC5(link->data, link->size) &&
		type != MKDA_EMAIL)
		return 0;

	FUNC0(ob, "<a href=\"");
	if (type == MKDA_EMAIL)
		FUNC0(ob, "mailto:");
	FUNC3(ob, link->data, link->size);

	if (options->link_attributes) {
		FUNC2(ob, '\"');
		options->link_attributes(ob, link, opaque);
		FUNC2(ob, '>');
	} else {
		FUNC0(ob, "\">");
	}

	/*
	 * Pretty printing: if we get an email address as
	 * an actual URI, e.g. `mailto:foo@bar.com`, we don't
	 * want to print the `mailto:` prefix
	 */
	if (FUNC1(link, "mailto:") == 0) {
		FUNC4(ob, link->data + 7, link->size - 7);
	} else {
		FUNC4(ob, link->data, link->size);
	}

	FUNC0(ob, "</a>");

	return 1;
}
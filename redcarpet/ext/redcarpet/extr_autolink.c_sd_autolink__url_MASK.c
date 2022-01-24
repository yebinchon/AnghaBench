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
typedef  char uint8_t ;
struct buf {int dummy; } ;

/* Variables and functions */
 unsigned int SD_AUTOLINK_SHORT_DOMAINS ; 
 size_t FUNC0 (char*,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct buf*,char*,size_t) ; 
 size_t FUNC2 (char*,size_t,unsigned int) ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t) ; 
 size_t FUNC6 (char*) ; 

size_t
FUNC7(
	size_t *rewind_p,
	struct buf *link,
	uint8_t *data,
	size_t max_rewind,
	size_t size,
	unsigned int flags)
{
	size_t link_end, rewind = 0, domain_len;

	if (size < 4 || data[1] != '/' || data[2] != '/')
		return 0;

	while (rewind < max_rewind && FUNC3(data[-rewind - 1]))
		rewind++;

	if (!FUNC5(data - rewind, size + rewind))
		return 0;

	link_end = FUNC6("://");

	domain_len = FUNC2(
		data + link_end,
		size - link_end,
		flags & SD_AUTOLINK_SHORT_DOMAINS);

	if (domain_len == 0)
		return 0;

	link_end += domain_len;
	while (link_end < size && !FUNC4(data[link_end]))
		link_end++;

	link_end = FUNC0(data, link_end, max_rewind, size);

	if (link_end == 0)
		return 0;

	/**
	 * In certain cases, we may refer to a link at the end of a
	 * sentence so the period should not be part of the URL.
	 */
	if (data[link_end - 1] == '.')
		link_end--;

	FUNC1(link, data - rewind, link_end + rewind);
	*rewind_p = rewind;

	return link_end;
}
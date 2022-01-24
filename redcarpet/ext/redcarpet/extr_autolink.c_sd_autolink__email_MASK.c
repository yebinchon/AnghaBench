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
 size_t FUNC0 (char*,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct buf*,char*,size_t) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char) ; 

size_t
FUNC4(
	size_t *rewind_p,
	struct buf *link,
	uint8_t *data,
	size_t max_rewind,
	size_t size,
	unsigned int flags)
{
	size_t link_end, rewind;
	int nb = 0, np = 0;

	for (rewind = 0; rewind < max_rewind; ++rewind) {
		uint8_t c = data[-rewind - 1];

		if (FUNC2(c))
			continue;

		if (FUNC3(".+-_", c) != NULL)
			continue;

		break;
	}

	if (rewind == 0)
		return 0;

	for (link_end = 0; link_end < size; ++link_end) {
		uint8_t c = data[link_end];

		if (FUNC2(c))
			continue;

		if (c == '@')
			nb++;
		else if (c == '.' && link_end < size - 1)
			np++;
		else if (c != '-' && c != '_')
			break;
	}

	if (link_end < 2 || nb != 1 || np == 0)
		return 0;

	link_end = FUNC0(data, link_end, max_rewind, size);

	if (link_end == 0)
		return 0;

	FUNC1(link, data - rewind, link_end + rewind);
	*rewind_p = rewind;

	return link_end;
}
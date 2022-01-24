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
typedef  int /*<<< orphan*/  uint8_t ;
struct buf {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct buf*,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

size_t
FUNC7(
	size_t *rewind_p,
	struct buf *link,
	uint8_t *data,
	size_t max_rewind,
	size_t size,
	unsigned int flags)
{
	size_t link_end;

	if (max_rewind > 0 && !FUNC3(data[-1]) && !FUNC4(data[-1]))
		return 0;

	if (size < 4 || FUNC5(data, "www.", FUNC6("www.")) != 0)
		return 0;

	link_end = FUNC2(data, size, 0);

	if (link_end == 0)
		return 0;

	while (link_end < size && !FUNC4(data[link_end]))
		link_end++;

	link_end = FUNC0(data, link_end, max_rewind, size);

	if (link_end == 0)
		return 0;

	FUNC1(link, data, link_end);
	*rewind_p = 0;

	return (int)link_end;
}
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
typedef  size_t uint8_t ;
struct buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/ * HTML_ESCAPES ; 
 size_t* HTML_ESCAPE_TABLE ; 
 int /*<<< orphan*/  FUNC1 (struct buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*,size_t const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*,int /*<<< orphan*/ ) ; 

void
FUNC5(struct buf *ob, const uint8_t *src, size_t size, int secure)
{
	size_t i = 0, org, esc = 0;

	FUNC1(ob, FUNC0(size));

	while (i < size) {
		org = i;
		while (i < size && (esc = HTML_ESCAPE_TABLE[src[i]]) == 0)
			i++;

		if (i > org)
			FUNC2(ob, src + org, i - org);

		/* escaping */
		if (i >= size)
			break;

		/* The forward slash is only escaped in secure mode */
		if (src[i] == '/' && !secure)
			FUNC3(ob, '/');
		else
			FUNC4(ob, HTML_ESCAPES[esc]);

		i++;
	}
}
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
 int /*<<< orphan*/  FUNC0 (struct buf*,char*) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 scalar_t__* HREF_SAFE ; 
 int /*<<< orphan*/  FUNC2 (struct buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*,char) ; 

void
FUNC5(struct buf *ob, const uint8_t *src, size_t size)
{
	static const char hex_chars[] = "0123456789ABCDEF";
	size_t  i = 0, org;
	char hex_str[3];

	FUNC2(ob, FUNC1(size));
	hex_str[0] = '%';

	while (i < size) {
		org = i;
		while (i < size && HREF_SAFE[src[i]] != 0)
			i++;

		if (i > org)
			FUNC3(ob, src + org, i - org);

		/* escaping */
		if (i >= size)
			break;

		switch (src[i]) {
		/* the single quote is a valid URL character
		 * according to the standard; it needs HTML
		 * entity escaping too */
		case '\'':
			FUNC0(ob, "&#x27;");
			break;
		
		/* the space can be escaped to %20 or a plus
		 * sign. we're going with the generic escape
		 * for now. the plus thing is more commonly seen
		 * when building GET strings */
#if 0
		case ' ':
			bufputc(ob, '+');
			break;
#endif

		/* every other character goes with a %XX escaping */
		default:
			hex_str[1] = hex_chars[(src[i] >> 4) & 0xF];
			hex_str[2] = hex_chars[src[i] & 0xF];
			FUNC3(ob, hex_str, 3);
		}

		i++;
	}
}
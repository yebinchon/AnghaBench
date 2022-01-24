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
typedef  int uint8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static size_t
FUNC1(uint8_t *data, size_t size)
{
	size_t i = 0, nb = 0;

	/* address is assumed to be: [-@._a-zA-Z0-9]+ with exactly one '@' */
	for (i = 0; i < size; ++i) {
		if (FUNC0(data[i]))
			continue;

		switch (data[i]) {
			case '@':
				nb++;

			case '-':
			case '.':
			case '_':
				break;

			case '>':
				return (nb == 1) ? i + 1 : 0;

			default:
				return 0;
		}
	}

	return 0;
}
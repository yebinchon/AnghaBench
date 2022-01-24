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
typedef  int /*<<< orphan*/  fz_arc4 ;

/* Variables and functions */
 unsigned char FUNC0 (int /*<<< orphan*/ *) ; 

void
FUNC1(fz_arc4 *arc4, unsigned char *dest, const unsigned char *src, size_t len)
{
	size_t i;
	for (i = 0; i < len; i++)
	{
		unsigned char x;
		x = FUNC0(arc4);
		dest[i] = src[i] ^ x;
	}
}
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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int*) ; 

__attribute__((used)) static uint16_t
FUNC3(uint8_t *buf, int len)
{
	int i, limit;
	uint32_t sum = 0;

	/* Checksum all the pairs of bytes first... */
    limit = len - (len & 1);
	for (i = 0; i < limit; i += 2)
		sum += FUNC2(buf + i);

	/*
	 * If there's a single byte left over, checksum it, too.
	 * Network byte order is big-endian, so the remaining byte is
	 * the high byte.
	 */
	if (i < len)
		sum += FUNC1(buf[i] << 8);

	return (FUNC0(sum));
}
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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void
FUNC2(uint8_t *data, uint8_t *dst)
{
	if (FUNC1(dst, data, sizeof (uint32_t))) {
		/* LINTED: pointer alignment */
		*(uint32_t *)&dst[0] ^= *(uint32_t *)&data[0];
		/* LINTED: pointer alignment */
		*(uint32_t *)&dst[4] ^= *(uint32_t *)&data[4];
		/* LINTED: pointer alignment */
		*(uint32_t *)&dst[8] ^= *(uint32_t *)&data[8];
		/* LINTED: pointer alignment */
		*(uint32_t *)&dst[12] ^= *(uint32_t *)&data[12];
	} else {
		FUNC0(data, dst);
	}
}
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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int CRC_LE_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

uint32_t* FUNC3(uint32_t *crc_table, int endian)
{
	/* Expects the caller to do the cleanup */
	if (!crc_table)
		crc_table = FUNC2((1 << CRC_LE_BITS) * sizeof(uint32_t));
	if (crc_table) {
		if (endian)
			FUNC0(crc_table);
		else
			FUNC1(crc_table);
	}
	return crc_table;
}
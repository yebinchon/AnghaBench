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

/* Variables and functions */
 int /*<<< orphan*/  TSD_HASH_TABLE_BITS_DEFAULT ; 
 int /*<<< orphan*/ * tsd_hash_table ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 

int
FUNC1(void)
{
	tsd_hash_table = FUNC0(TSD_HASH_TABLE_BITS_DEFAULT);
	if (tsd_hash_table == NULL)
		return (1);

	return (0);
}
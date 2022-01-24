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
struct super_block {int dummy; } ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*,int /*<<< orphan*/ ,int*) ; 

void
FUNC1(int64_t nr_to_scan, void *arg)
{
	struct super_block *sb = (struct super_block *)arg;
	int objects = 0;

	(void) -FUNC0(sb, nr_to_scan, &objects);
}
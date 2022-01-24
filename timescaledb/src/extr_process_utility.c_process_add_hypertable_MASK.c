#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  main_table_relid; } ;
struct TYPE_5__ {int /*<<< orphan*/  hypertable_list; } ;
typedef  TYPE_1__ ProcessUtilityArgs ;
typedef  TYPE_2__ Hypertable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(ProcessUtilityArgs *args, Hypertable *ht)
{
	args->hypertable_list = FUNC0(args->hypertable_list, ht->main_table_relid);
}
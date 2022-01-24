#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_hash_table_t ;
struct TYPE_3__ {int /*<<< orphan*/  he_pid_list; int /*<<< orphan*/  he_key_list; int /*<<< orphan*/  he_list; } ;
typedef  TYPE_1__ tsd_hash_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(tsd_hash_table_t *table, tsd_hash_entry_t *entry)
{
	FUNC0(&entry->he_list);
	FUNC1(&entry->he_key_list);
	FUNC1(&entry->he_pid_list);
}
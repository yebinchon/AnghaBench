#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ section; TYPE_1__* network; } ;
struct TYPE_6__ {scalar_t__ n_static_fdb_entries; int /*<<< orphan*/  fdb_entries_by_section; int /*<<< orphan*/  static_fdb_entries; } ;
typedef  TYPE_2__ FdbEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  static_fdb_entries ; 

void FUNC5(FdbEntry *fdb_entry) {
        if (!fdb_entry)
                return;

        if (fdb_entry->network) {
                FUNC0(static_fdb_entries, fdb_entry->network->static_fdb_entries, fdb_entry);
                FUNC1(fdb_entry->network->n_static_fdb_entries > 0);
                fdb_entry->network->n_static_fdb_entries--;

                if (fdb_entry->section)
                        FUNC3(fdb_entry->network->fdb_entries_by_section, fdb_entry->section);
        }

        FUNC4(fdb_entry->section);
        FUNC2(fdb_entry);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct udev_list_entry {int /*<<< orphan*/  value; int /*<<< orphan*/  name; TYPE_1__* list; } ;
struct TYPE_2__ {int /*<<< orphan*/  entries; int /*<<< orphan*/  unique_entries; scalar_t__ unique; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct udev_list_entry*) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct udev_list_entry* FUNC3 (struct udev_list_entry*) ; 

__attribute__((used)) static struct udev_list_entry *FUNC4(struct udev_list_entry *entry) {
        if (!entry)
                return NULL;

        if (entry->list) {
                if (entry->list->unique)
                        FUNC2(entry->list->unique_entries, entry->name);
                else
                        FUNC0(entries, entry->list->entries, entry);
        }

        FUNC1(entry->name);
        FUNC1(entry->value);

        return FUNC3(entry);
}
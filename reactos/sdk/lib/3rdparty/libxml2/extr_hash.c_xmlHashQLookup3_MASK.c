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
typedef  TYPE_1__* xmlHashTablePtr ;
typedef  TYPE_2__* xmlHashEntryPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_6__ {scalar_t__ valid; void* payload; int /*<<< orphan*/  name3; int /*<<< orphan*/  name2; int /*<<< orphan*/  name; struct TYPE_6__* next; } ;
struct TYPE_5__ {TYPE_2__* table; } ;

/* Variables and functions */
 unsigned long FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

void *
FUNC2(xmlHashTablePtr table,
                const xmlChar *prefix, const xmlChar *name,
		const xmlChar *prefix2, const xmlChar *name2,
		const xmlChar *prefix3, const xmlChar *name3) {
    unsigned long key;
    xmlHashEntryPtr entry;

    if (table == NULL)
	return(NULL);
    if (name == NULL)
	return(NULL);
    key = FUNC0(table, prefix, name, prefix2,
                             name2, prefix3, name3);
    if (table->table[key].valid == 0)
	return(NULL);
    for (entry = &(table->table[key]); entry != NULL; entry = entry->next) {
	if ((FUNC1(prefix, name, entry->name)) &&
	    (FUNC1(prefix2, name2, entry->name2)) &&
	    (FUNC1(prefix3, name3, entry->name3)))
	    return(entry->payload);
    }
    return(NULL);
}
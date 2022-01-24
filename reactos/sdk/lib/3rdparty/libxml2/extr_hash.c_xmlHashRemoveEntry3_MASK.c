#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlHashTablePtr ;
typedef  TYPE_2__* xmlHashEntryPtr ;
typedef  int /*<<< orphan*/  xmlHashEntry ;
typedef  int /*<<< orphan*/  (* xmlHashDeallocator ) (int /*<<< orphan*/ *,TYPE_2__*) ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_12__ {scalar_t__ valid; struct TYPE_12__* next; struct TYPE_12__* name3; struct TYPE_12__* name2; struct TYPE_12__* name; int /*<<< orphan*/ * payload; } ;
struct TYPE_11__ {int /*<<< orphan*/  nbElems; TYPE_2__* table; int /*<<< orphan*/ * dict; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 unsigned long FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/  const*) ; 

int
FUNC4(xmlHashTablePtr table, const xmlChar *name,
    const xmlChar *name2, const xmlChar *name3, xmlHashDeallocator f) {
    unsigned long key;
    xmlHashEntryPtr entry;
    xmlHashEntryPtr prev = NULL;

    if (table == NULL || name == NULL)
        return(-1);

    key = FUNC2(table, name, name2, name3);
    if (table->table[key].valid == 0) {
        return(-1);
    } else {
        for (entry = &(table->table[key]); entry != NULL; entry = entry->next) {
            if (FUNC3(entry->name, name) &&
                    FUNC3(entry->name2, name2) &&
                    FUNC3(entry->name3, name3)) {
                if ((f != NULL) && (entry->payload != NULL))
                    f(entry->payload, entry->name);
                entry->payload = NULL;
		if (table->dict == NULL) {
		    if(entry->name)
			FUNC1(entry->name);
		    if(entry->name2)
			FUNC1(entry->name2);
		    if(entry->name3)
			FUNC1(entry->name3);
		}
                if(prev) {
                    prev->next = entry->next;
		    FUNC1(entry);
		} else {
		    if (entry->next == NULL) {
			entry->valid = 0;
		    } else {
			entry = entry->next;
			FUNC0(&(table->table[key]), entry, sizeof(xmlHashEntry));
			FUNC1(entry);
		    }
		}
                table->nbElems--;
                return(0);
            }
            prev = entry;
        }
        return(-1);
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlHashTablePtr ;
typedef  TYPE_2__* xmlHashEntryPtr ;
typedef  int /*<<< orphan*/  xmlHashEntry ;
typedef  int /*<<< orphan*/  const xmlChar ;
struct TYPE_8__ {scalar_t__ valid; struct TYPE_8__* next; void* payload; int /*<<< orphan*/  const* name3; int /*<<< orphan*/  const* name2; int /*<<< orphan*/  const* name; } ;
struct TYPE_7__ {unsigned long size; int /*<<< orphan*/  nbElems; int /*<<< orphan*/ * dict; TYPE_2__* table; } ;

/* Variables and functions */
 unsigned long MAX_HASH_LEN ; 
 int /*<<< orphan*/  const* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 unsigned long FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned long) ; 
 TYPE_2__* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 void* FUNC6 (int /*<<< orphan*/  const*) ; 

int
FUNC7(xmlHashTablePtr table, const xmlChar *name,
	         const xmlChar *name2, const xmlChar *name3,
		 void *userdata) {
    unsigned long key, len = 0;
    xmlHashEntryPtr entry;
    xmlHashEntryPtr insert;

    if ((table == NULL) || (name == NULL))
	return(-1);

    /*
     * If using a dict internalize if needed
     */
    if (table->dict) {
        if (!FUNC1(table->dict, name)) {
	    name = FUNC0(table->dict, name, -1);
	    if (name == NULL)
	        return(-1);
	}
        if ((name2 != NULL) && (!FUNC1(table->dict, name2))) {
	    name2 = FUNC0(table->dict, name2, -1);
	    if (name2 == NULL)
	        return(-1);
	}
        if ((name3 != NULL) && (!FUNC1(table->dict, name3))) {
	    name3 = FUNC0(table->dict, name3, -1);
	    if (name3 == NULL)
	        return(-1);
	}
    }

    /*
     * Check for duplicate and insertion location.
     */
    key = FUNC2(table, name, name2, name3);
    if (table->table[key].valid == 0) {
	insert = NULL;
    } else {
        if (table->dict) {
	    for (insert = &(table->table[key]); insert->next != NULL;
		 insert = insert->next) {
		if ((insert->name == name) &&
		    (insert->name2 == name2) &&
		    (insert->name3 == name3))
		    return(-1);
		len++;
	    }
	    if ((insert->name == name) &&
		(insert->name2 == name2) &&
		(insert->name3 == name3))
		return(-1);
	} else {
	    for (insert = &(table->table[key]); insert->next != NULL;
		 insert = insert->next) {
		if ((FUNC5(insert->name, name)) &&
		    (FUNC5(insert->name2, name2)) &&
		    (FUNC5(insert->name3, name3)))
		    return(-1);
		len++;
	    }
	    if ((FUNC5(insert->name, name)) &&
		(FUNC5(insert->name2, name2)) &&
		(FUNC5(insert->name3, name3)))
		return(-1);
	}
    }

    if (insert == NULL) {
	entry = &(table->table[key]);
    } else {
	entry = FUNC4(sizeof(xmlHashEntry));
	if (entry == NULL)
	     return(-1);
    }

    if (table->dict != NULL) {
        entry->name = (xmlChar *) name;
        entry->name2 = (xmlChar *) name2;
        entry->name3 = (xmlChar *) name3;
    } else {
	entry->name = FUNC6(name);
	entry->name2 = FUNC6(name2);
	entry->name3 = FUNC6(name3);
    }
    entry->payload = userdata;
    entry->next = NULL;
    entry->valid = 1;


    if (insert != NULL)
	insert->next = entry;

    table->nbElems++;

    if (len > MAX_HASH_LEN)
	FUNC3(table, MAX_HASH_LEN * table->size);

    return(0);
}
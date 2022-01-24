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
typedef  TYPE_1__* xmlHashTablePtr ;
typedef  TYPE_2__* xmlHashEntryPtr ;
typedef  int /*<<< orphan*/  xmlHashEntry ;
typedef  int /*<<< orphan*/  (* xmlHashDeallocator ) (void*,int /*<<< orphan*/  const*) ;
typedef  int /*<<< orphan*/  const xmlChar ;
struct TYPE_7__ {scalar_t__ valid; struct TYPE_7__* next; void* payload; int /*<<< orphan*/  const* name3; int /*<<< orphan*/  const* name2; int /*<<< orphan*/  const* name; } ;
struct TYPE_6__ {int /*<<< orphan*/  nbElems; int /*<<< orphan*/ * dict; TYPE_2__* table; } ;

/* Variables and functions */
 int /*<<< orphan*/  const* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 unsigned long FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 void* FUNC5 (int /*<<< orphan*/  const*) ; 

int
FUNC6(xmlHashTablePtr table, const xmlChar *name,
	           const xmlChar *name2, const xmlChar *name3,
		   void *userdata, xmlHashDeallocator f) {
    unsigned long key;
    xmlHashEntryPtr entry;
    xmlHashEntryPtr insert;

    if ((table == NULL) || name == NULL)
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
        if (table ->dict) {
	    for (insert = &(table->table[key]); insert->next != NULL;
		 insert = insert->next) {
		if ((insert->name == name) &&
		    (insert->name2 == name2) &&
		    (insert->name3 == name3)) {
		    if (f)
			f(insert->payload, insert->name);
		    insert->payload = userdata;
		    return(0);
		}
	    }
	    if ((insert->name == name) &&
		(insert->name2 == name2) &&
		(insert->name3 == name3)) {
		if (f)
		    f(insert->payload, insert->name);
		insert->payload = userdata;
		return(0);
	    }
	} else {
	    for (insert = &(table->table[key]); insert->next != NULL;
		 insert = insert->next) {
		if ((FUNC4(insert->name, name)) &&
		    (FUNC4(insert->name2, name2)) &&
		    (FUNC4(insert->name3, name3))) {
		    if (f)
			f(insert->payload, insert->name);
		    insert->payload = userdata;
		    return(0);
		}
	    }
	    if ((FUNC4(insert->name, name)) &&
		(FUNC4(insert->name2, name2)) &&
		(FUNC4(insert->name3, name3))) {
		if (f)
		    f(insert->payload, insert->name);
		insert->payload = userdata;
		return(0);
	    }
	}
    }

    if (insert == NULL) {
	entry =  &(table->table[key]);
    } else {
	entry = FUNC3(sizeof(xmlHashEntry));
	if (entry == NULL)
	     return(-1);
    }

    if (table->dict != NULL) {
        entry->name = (xmlChar *) name;
        entry->name2 = (xmlChar *) name2;
        entry->name3 = (xmlChar *) name3;
    } else {
	entry->name = FUNC5(name);
	entry->name2 = FUNC5(name2);
	entry->name3 = FUNC5(name3);
    }
    entry->payload = userdata;
    entry->next = NULL;
    entry->valid = 1;
    table->nbElems++;


    if (insert != NULL) {
	insert->next = entry;
    }
    return(0);
}
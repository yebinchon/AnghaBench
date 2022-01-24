#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* next; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ dictEntry ;
struct TYPE_9__ {unsigned long used; unsigned long size; unsigned long sizemask; TYPE_1__** table; int /*<<< orphan*/  privdata; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ dict ;

/* Variables and functions */
 int DICT_ERR ; 
 int DICT_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__** FUNC3 (unsigned long,int) ; 
 unsigned int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**) ; 

__attribute__((used)) static int FUNC6(dict *ht, unsigned long size) {
    dict n; /* the new hashtable */
    unsigned long realsize = FUNC1(size), i;

    /* the size is invalid if it is smaller than the number of
     * elements already inside the hashtable */
    if (ht->used > size)
        return DICT_ERR;

    FUNC0(&n, ht->type, ht->privdata);
    n.size = realsize;
    n.sizemask = realsize-1;
    n.table = FUNC3(realsize,sizeof(dictEntry*));

    /* Copy all the elements from the old to the new table:
     * note that if the old hash table is empty ht->size is zero,
     * so dictExpand just creates an hash table. */
    n.used = ht->used;
    for (i = 0; i < ht->size && ht->used > 0; i++) {
        dictEntry *he, *nextHe;

        if (ht->table[i] == NULL) continue;

        /* For each hash entry on this slot... */
        he = ht->table[i];
        while(he) {
            unsigned int h;

            nextHe = he->next;
            /* Get the new element index */
            h = FUNC4(ht, he->key) & n.sizemask;
            he->next = n.table[h];
            n.table[h] = he;
            ht->used--;
            /* Pass to the next element */
            he = nextHe;
        }
    }
    FUNC2(ht->used == 0);
    FUNC5(ht->table);

    /* Remap the new hashtable in the old */
    *ht = n;
    return DICT_OK;
}
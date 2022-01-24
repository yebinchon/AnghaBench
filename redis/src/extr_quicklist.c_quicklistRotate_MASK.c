#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int count; int len; TYPE_5__* tail; } ;
typedef  TYPE_1__ quicklist ;
typedef  int /*<<< orphan*/  longstr ;
struct TYPE_7__ {int /*<<< orphan*/  zl; } ;

/* Variables and functions */
 unsigned int FUNC0 (char*,int,long long) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_5__*,unsigned char**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char**,unsigned int*,long long*) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ ,int) ; 

void FUNC5(quicklist *quicklist) {
    if (quicklist->count <= 1)
        return;

    /* First, get the tail entry */
    unsigned char *p = FUNC4(quicklist->tail->zl, -1);
    unsigned char *value;
    long long longval;
    unsigned int sz;
    char longstr[32] = {0};
    FUNC3(p, &value, &sz, &longval);

    /* If value found is NULL, then ziplistGet populated longval instead */
    if (!value) {
        /* Write the longval as a string so we can re-add it */
        sz = FUNC0(longstr, sizeof(longstr), longval);
        value = (unsigned char *)longstr;
    }

    /* Add tail entry to head (must happen before tail is deleted). */
    FUNC2(quicklist, value, sz);

    /* If quicklist has only one node, the head ziplist is also the
     * tail ziplist and PushHead() could have reallocated our single ziplist,
     * which would make our pre-existing 'p' unusable. */
    if (quicklist->len == 1) {
        p = FUNC4(quicklist->tail->zl, -1);
    }

    /* Remove tail entry. */
    FUNC1(quicklist, quicklist->tail, &p);
}
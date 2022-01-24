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
struct TYPE_3__ {size_t items; size_t maxitems; void** stack; void** static_items; int oom; } ;
typedef  TYPE_1__ raxStack ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (void**,void**,int) ; 
 void** FUNC1 (int) ; 
 void** FUNC2 (void**,int) ; 

__attribute__((used)) static inline int FUNC3(raxStack *ts, void *ptr) {
    if (ts->items == ts->maxitems) {
        if (ts->stack == ts->static_items) {
            ts->stack = FUNC1(sizeof(void*)*ts->maxitems*2);
            if (ts->stack == NULL) {
                ts->stack = ts->static_items;
                ts->oom = 1;
                errno = ENOMEM;
                return 0;
            }
            FUNC0(ts->stack,ts->static_items,sizeof(void*)*ts->maxitems);
        } else {
            void **newalloc = FUNC2(ts->stack,sizeof(void*)*ts->maxitems*2);
            if (newalloc == NULL) {
                ts->oom = 1;
                errno = ENOMEM;
                return 0;
            }
            ts->stack = newalloc;
        }
        ts->maxitems *= 2;
    }
    ts->stack[ts->items] = ptr;
    ts->items++;
    return 1;
}
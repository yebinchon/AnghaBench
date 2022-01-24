#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_6__ {int /*<<< orphan*/  longval; int /*<<< orphan*/  sz; scalar_t__ value; } ;
struct TYPE_7__ {TYPE_2__ entry; TYPE_1__* li; } ;
typedef  TYPE_3__ listTypeEntry ;
struct TYPE_5__ {scalar_t__ encoding; } ;

/* Variables and functions */
 scalar_t__ OBJ_ENCODING_QUICKLIST ; 
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

robj *FUNC3(listTypeEntry *entry) {
    robj *value = NULL;
    if (entry->li->encoding == OBJ_ENCODING_QUICKLIST) {
        if (entry->entry.value) {
            value = FUNC0((char *)entry->entry.value,
                                       entry->entry.sz);
        } else {
            value = FUNC1(entry->entry.longval);
        }
    } else {
        FUNC2("Unknown list encoding");
    }
    return value;
}
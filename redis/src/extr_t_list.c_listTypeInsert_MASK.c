#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
struct TYPE_12__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ robj ;
typedef  int /*<<< orphan*/  quicklist ;
struct TYPE_14__ {scalar_t__ quicklist; } ;
struct TYPE_13__ {TYPE_4__ entry; TYPE_1__* li; } ;
typedef  TYPE_3__ listTypeEntry ;
struct TYPE_11__ {scalar_t__ encoding; } ;

/* Variables and functions */
 int LIST_HEAD ; 
 int LIST_TAIL ; 
 scalar_t__ OBJ_ENCODING_QUICKLIST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void FUNC6(listTypeEntry *entry, robj *value, int where) {
    if (entry->li->encoding == OBJ_ENCODING_QUICKLIST) {
        value = FUNC1(value);
        sds str = value->ptr;
        size_t len = FUNC4(str);
        if (where == LIST_TAIL) {
            FUNC2((quicklist *)entry->entry.quicklist,
                                 &entry->entry, str, len);
        } else if (where == LIST_HEAD) {
            FUNC3((quicklist *)entry->entry.quicklist,
                                  &entry->entry, str, len);
        }
        FUNC0(value);
    } else {
        FUNC5("Unknown list encoding");
    }
}
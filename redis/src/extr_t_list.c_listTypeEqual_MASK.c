#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ robj ;
struct TYPE_10__ {int /*<<< orphan*/  zi; } ;
struct TYPE_12__ {TYPE_2__ entry; TYPE_1__* li; } ;
typedef  TYPE_4__ listTypeEntry ;
struct TYPE_9__ {scalar_t__ encoding; } ;

/* Variables and functions */
 scalar_t__ OBJ_ENCODING_QUICKLIST ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(listTypeEntry *entry, robj *o) {
    if (entry->li->encoding == OBJ_ENCODING_QUICKLIST) {
        FUNC3(NULL,o,FUNC1(o));
        return FUNC0(entry->entry.zi,o->ptr,FUNC2(o->ptr));
    } else {
        FUNC4("Unknown list encoding");
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ encoding; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_19__ {int /*<<< orphan*/  longval; int /*<<< orphan*/  sz; scalar_t__ value; } ;
typedef  TYPE_2__ quicklistEntry ;
struct TYPE_20__ {size_t resp; int /*<<< orphan*/ * argv; } ;
typedef  TYPE_3__ client ;
struct TYPE_21__ {int /*<<< orphan*/ * null; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 scalar_t__ OBJ_ENCODING_QUICKLIST ; 
 int /*<<< orphan*/  OBJ_LIST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,long*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,long,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 TYPE_4__ shared ; 

void FUNC10(client *c) {
    robj *o = FUNC7(c,c->argv[1],shared.null[c->resp]);
    if (o == NULL || FUNC2(c,o,OBJ_LIST)) return;
    long index;
    robj *value = NULL;

    if ((FUNC6(c, c->argv[2], &index, NULL) != C_OK))
        return;

    if (o->encoding == OBJ_ENCODING_QUICKLIST) {
        quicklistEntry entry;
        if (FUNC8(o->ptr, index, &entry)) {
            if (entry.value) {
                value = FUNC3((char*)entry.value,entry.sz);
            } else {
                value = FUNC4(entry.longval);
            }
            FUNC0(c,value);
            FUNC5(value);
        } else {
            FUNC1(c);
        }
    } else {
        FUNC9("Unknown list encoding");
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
typedef  int /*<<< orphan*/  hashTypeIterator ;
struct TYPE_9__ {size_t resp; int /*<<< orphan*/ * argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_10__ {int /*<<< orphan*/ * emptymap; } ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 int /*<<< orphan*/  OBJ_HASH ; 
 int OBJ_HASH_KEY ; 
 int OBJ_HASH_VALUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 TYPE_2__ shared ; 

void FUNC10(client *c, int flags) {
    robj *o;
    hashTypeIterator *hi;
    int length, count = 0;

    if ((o = FUNC8(c,c->argv[1],shared.emptymap[c->resp]))
        == NULL || FUNC3(c,o,OBJ_HASH)) return;

    /* We return a map if the user requested keys and values, like in the
     * HGETALL case. Otherwise to use a flat array makes more sense. */
    length = FUNC5(o);
    if (flags & OBJ_HASH_KEY && flags & OBJ_HASH_VALUE) {
        FUNC2(c, length);
    } else {
        FUNC1(c, length);
    }

    hi = FUNC4(o);
    while (FUNC6(hi) != C_ERR) {
        if (flags & OBJ_HASH_KEY) {
            FUNC0(c, hi, OBJ_HASH_KEY);
            count++;
        }
        if (flags & OBJ_HASH_VALUE) {
            FUNC0(c, hi, OBJ_HASH_VALUE);
            count++;
        }
    }

    FUNC7(hi);

    /* Make sure we returned the right number of elements. */
    if (flags & OBJ_HASH_KEY && flags & OBJ_HASH_VALUE) count /= 2;
    FUNC9(count == length);
}
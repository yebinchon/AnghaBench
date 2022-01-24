#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
struct TYPE_4__ {int encoding; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  hashTypeIterator ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 int DICT_OK ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int OBJ_ENCODING_HT ; 
 int OBJ_ENCODING_ZIPLIST ; 
 int /*<<< orphan*/  OBJ_HASH_KEY ; 
 int /*<<< orphan*/  OBJ_HASH_VALUE ; 
 int dict ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hashDictType ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(robj *o, int enc) {
    FUNC6(o->encoding == OBJ_ENCODING_ZIPLIST);

    if (enc == OBJ_ENCODING_ZIPLIST) {
        /* Nothing to do... */

    } else if (enc == OBJ_ENCODING_HT) {
        hashTypeIterator *hi;
        dict *dict;
        int ret;

        hi = FUNC3(o);
        dict = FUNC1(&hashDictType, NULL);

        while (FUNC4(hi) != C_ERR) {
            sds key, value;

            key = FUNC2(hi,OBJ_HASH_KEY);
            value = FUNC2(hi,OBJ_HASH_VALUE);
            ret = FUNC0(dict, key, value);
            if (ret != DICT_OK) {
                FUNC7(LL_WARNING,"ziplist with dup elements dump",
                    o->ptr,FUNC10(o->ptr));
                FUNC8("Ziplist corruption detected");
            }
        }
        FUNC5(hi);
        FUNC9(o->ptr);
        o->encoding = OBJ_ENCODING_HT;
        o->ptr = dict;
    } else {
        FUNC8("Unknown hash encoding");
    }
}
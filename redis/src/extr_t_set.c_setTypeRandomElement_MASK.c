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
typedef  int /*<<< orphan*/ * sds ;
struct TYPE_3__ {scalar_t__ encoding; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  dictEntry ;

/* Variables and functions */
 scalar_t__ OBJ_ENCODING_HT ; 
 scalar_t__ OBJ_ENCODING_INTSET ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(robj *setobj, sds *sdsele, int64_t *llele) {
    if (setobj->encoding == OBJ_ENCODING_HT) {
        dictEntry *de = FUNC0(setobj->ptr);
        *sdsele = FUNC1(de);
        *llele = -123456789; /* Not needed. Defensive. */
    } else if (setobj->encoding == OBJ_ENCODING_INTSET) {
        *llele = FUNC2(setobj->ptr);
        *sdsele = NULL; /* Not needed. Defensive. */
    } else {
        FUNC3("Unknown set encoding");
    }
    return setobj->encoding;
}
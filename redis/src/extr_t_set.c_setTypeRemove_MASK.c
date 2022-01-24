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
typedef  int /*<<< orphan*/  sds ;
struct TYPE_3__ {scalar_t__ encoding; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 scalar_t__ DICT_OK ; 
 scalar_t__ OBJ_ENCODING_HT ; 
 scalar_t__ OBJ_ENCODING_INTSET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,long long,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,long long*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int FUNC6(robj *setobj, sds value) {
    long long llval;
    if (setobj->encoding == OBJ_ENCODING_HT) {
        if (FUNC0(setobj->ptr,value) == DICT_OK) {
            if (FUNC2(setobj->ptr)) FUNC1(setobj->ptr);
            return 1;
        }
    } else if (setobj->encoding == OBJ_ENCODING_INTSET) {
        if (FUNC4(value,&llval) == C_OK) {
            int success;
            setobj->ptr = FUNC3(setobj->ptr,llval,&success);
            if (success) return 1;
        }
    } else {
        FUNC5("Unknown set encoding");
    }
    return 0;
}
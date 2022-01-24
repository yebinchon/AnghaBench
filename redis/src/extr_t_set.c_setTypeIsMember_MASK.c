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
struct TYPE_3__ {scalar_t__ encoding; scalar_t__ ptr; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  intset ;
typedef  int /*<<< orphan*/  dict ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 scalar_t__ OBJ_ENCODING_HT ; 
 scalar_t__ OBJ_ENCODING_INTSET ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,long long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,long long*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(robj *subject, sds value) {
    long long llval;
    if (subject->encoding == OBJ_ENCODING_HT) {
        return FUNC0((dict*)subject->ptr,value) != NULL;
    } else if (subject->encoding == OBJ_ENCODING_INTSET) {
        if (FUNC2(value,&llval) == C_OK) {
            return FUNC1((intset*)subject->ptr,llval);
        }
    } else {
        FUNC3("Unknown set encoding");
    }
    return 0;
}
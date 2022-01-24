#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct TYPE_8__ {int encoding; int length; } ;
typedef  TYPE_1__ intset ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 

intset *FUNC5(intset *is, int64_t value, int *success) {
    uint8_t valenc = FUNC0(value);
    uint32_t pos;
    if (success) *success = 0;

    if (valenc <= FUNC1(is->encoding) && FUNC4(is,value,&pos)) {
        uint32_t len = FUNC1(is->length);

        /* We know we can delete */
        if (success) *success = 1;

        /* Overwrite value with tail and update length */
        if (pos < (len-1)) FUNC2(is,pos+1,pos);
        is = FUNC3(is,len-1);
        is->length = FUNC1(len-1);
    }
    return is;
}
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
typedef  int uint8_t ;
struct TYPE_8__ {int encoding; int length; } ;
typedef  TYPE_1__ intset ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (int) ; 
 TYPE_1__* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static intset *FUNC5(intset *is, int64_t value) {
    uint8_t curenc = FUNC3(is->encoding);
    uint8_t newenc = FUNC2(value);
    int length = FUNC3(is->length);
    int prepend = value < 0 ? 1 : 0;

    /* First set new encoding and resize */
    is->encoding = FUNC3(newenc);
    is = FUNC4(is,FUNC3(is->length)+1);

    /* Upgrade back-to-front so we don't overwrite values.
     * Note that the "prepend" variable is used to make sure we have an empty
     * space at either the beginning or the end of the intset. */
    while(length--)
        FUNC1(is,length+prepend,FUNC0(is,length,curenc));

    /* Set the value at the beginning or the end. */
    if (prepend)
        FUNC1(is,0,value);
    else
        FUNC1(is,FUNC3(is->length),value);
    is->length = FUNC3(FUNC3(is->length)+1);
    return is;
}
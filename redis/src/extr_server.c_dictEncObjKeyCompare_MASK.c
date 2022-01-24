#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ encoding; scalar_t__ ptr; } ;
typedef  TYPE_1__ robj ;

/* Variables and functions */
 scalar_t__ OBJ_ENCODING_INT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (void*,scalar_t__,scalar_t__) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 

int FUNC3(void *privdata, const void *key1,
        const void *key2)
{
    robj *o1 = (robj*) key1, *o2 = (robj*) key2;
    int cmp;

    if (o1->encoding == OBJ_ENCODING_INT &&
        o2->encoding == OBJ_ENCODING_INT)
            return o1->ptr == o2->ptr;

    o1 = FUNC2(o1);
    o2 = FUNC2(o2);
    cmp = FUNC1(privdata,o1->ptr,o2->ptr);
    FUNC0(o1);
    FUNC0(o2);
    return cmp;
}
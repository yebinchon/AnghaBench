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
typedef  scalar_t__ sds ;
struct TYPE_5__ {scalar_t__ encoding; } ;
typedef  TYPE_1__ hashTypeIterator ;

/* Variables and functions */
 scalar_t__ OBJ_ENCODING_HT ; 
 scalar_t__ OBJ_ENCODING_ZIPLIST ; 
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,unsigned char**,unsigned int*,long long*) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(hashTypeIterator *hi, int what, unsigned char **vstr, unsigned int *vlen, long long *vll) {
    if (hi->encoding == OBJ_ENCODING_ZIPLIST) {
        *vstr = NULL;
        FUNC1(hi, what, vstr, vlen, vll);
    } else if (hi->encoding == OBJ_ENCODING_HT) {
        sds ele = FUNC0(hi, what);
        *vstr = (unsigned char*) ele;
        *vlen = FUNC2(ele);
    } else {
        FUNC3("Unknown hash encoding");
    }
}
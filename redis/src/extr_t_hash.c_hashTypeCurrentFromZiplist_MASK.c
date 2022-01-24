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
struct TYPE_3__ {scalar_t__ encoding; int /*<<< orphan*/  vptr; int /*<<< orphan*/  fptr; } ;
typedef  TYPE_1__ hashTypeIterator ;

/* Variables and functions */
 scalar_t__ OBJ_ENCODING_ZIPLIST ; 
 int OBJ_HASH_KEY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char**,unsigned int*,long long*) ; 

void FUNC2(hashTypeIterator *hi, int what,
                                unsigned char **vstr,
                                unsigned int *vlen,
                                long long *vll)
{
    int ret;

    FUNC0(hi->encoding == OBJ_ENCODING_ZIPLIST);

    if (what & OBJ_HASH_KEY) {
        ret = FUNC1(hi->fptr, vstr, vlen, vll);
        FUNC0(ret);
    } else {
        ret = FUNC1(hi->vptr, vstr, vlen, vll);
        FUNC0(ret);
    }
}
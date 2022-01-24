#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ type; char* ptr; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  bufb ;
typedef  int /*<<< orphan*/  bufa ;

/* Variables and functions */
 scalar_t__ OBJ_STRING ; 
 int REDIS_COMPARE_COLL ; 
 size_t FUNC0 (char*,int,long) ; 
 int FUNC1 (char*,char*,size_t) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 size_t FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int FUNC5 (char*,char*) ; 

int FUNC6(robj *a, robj *b, int flags) {
    FUNC4(NULL,a,a->type == OBJ_STRING && b->type == OBJ_STRING);
    char bufa[128], bufb[128], *astr, *bstr;
    size_t alen, blen, minlen;

    if (a == b) return 0;
    if (FUNC2(a)) {
        astr = a->ptr;
        alen = FUNC3(astr);
    } else {
        alen = FUNC0(bufa,sizeof(bufa),(long) a->ptr);
        astr = bufa;
    }
    if (FUNC2(b)) {
        bstr = b->ptr;
        blen = FUNC3(bstr);
    } else {
        blen = FUNC0(bufb,sizeof(bufb),(long) b->ptr);
        bstr = bufb;
    }
    if (flags & REDIS_COMPARE_COLL) {
        return FUNC5(astr,bstr);
    } else {
        int cmp;

        minlen = (alen < blen) ? alen : blen;
        cmp = FUNC1(astr,bstr,minlen);
        if (cmp == 0) return alen-blen;
        return cmp;
    }
}
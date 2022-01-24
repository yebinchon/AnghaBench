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
typedef  int /*<<< orphan*/ * sds ;
struct TYPE_5__ {scalar_t__ encoding; } ;
typedef  TYPE_1__ robj ;

/* Variables and functions */
 long long LLONG_MAX ; 
 scalar_t__ OBJ_ENCODING_HT ; 
 scalar_t__ OBJ_ENCODING_ZIPLIST ; 
 unsigned int UINT_MAX ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,unsigned char**,unsigned int*,long long*) ; 
 unsigned int FUNC2 (long long) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

size_t FUNC5(robj *o, sds field) {
    size_t len = 0;
    if (o->encoding == OBJ_ENCODING_ZIPLIST) {
        unsigned char *vstr = NULL;
        unsigned int vlen = UINT_MAX;
        long long vll = LLONG_MAX;

        if (FUNC1(o, field, &vstr, &vlen, &vll) == 0)
            len = vstr ? vlen : FUNC2(vll);
    } else if (o->encoding == OBJ_ENCODING_HT) {
        sds aux;

        if ((aux = FUNC0(o, field)) != NULL)
            len = FUNC3(aux);
    } else {
        FUNC4("Unknown hash encoding");
    }
    return len;
}
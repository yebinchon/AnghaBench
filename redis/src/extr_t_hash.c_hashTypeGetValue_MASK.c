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
 int C_ERR ; 
 int C_OK ; 
 scalar_t__ OBJ_ENCODING_HT ; 
 scalar_t__ OBJ_ENCODING_ZIPLIST ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,unsigned char**,unsigned int*,long long*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(robj *o, sds field, unsigned char **vstr, unsigned int *vlen, long long *vll) {
    if (o->encoding == OBJ_ENCODING_ZIPLIST) {
        *vstr = NULL;
        if (FUNC1(o, field, vstr, vlen, vll) == 0)
            return C_OK;
    } else if (o->encoding == OBJ_ENCODING_HT) {
        sds value;
        if ((value = FUNC0(o, field)) != NULL) {
            *vstr = (unsigned char*) value;
            *vlen = FUNC2(value);
            return C_OK;
        }
    } else {
        FUNC3("Unknown hash encoding");
    }
    return C_ERR;
}
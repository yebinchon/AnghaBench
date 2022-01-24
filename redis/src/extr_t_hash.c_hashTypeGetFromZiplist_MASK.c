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
typedef  scalar_t__ sds ;
struct TYPE_3__ {scalar_t__ encoding; unsigned char* ptr; } ;
typedef  TYPE_1__ robj ;

/* Variables and functions */
 scalar_t__ OBJ_ENCODING_ZIPLIST ; 
 int /*<<< orphan*/  ZIPLIST_HEAD ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned char* FUNC2 (unsigned char*,unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (unsigned char*,unsigned char**,unsigned int*,long long*) ; 
 unsigned char* FUNC4 (unsigned char*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC5 (unsigned char*,unsigned char*) ; 

int FUNC6(robj *o, sds field,
                           unsigned char **vstr,
                           unsigned int *vlen,
                           long long *vll)
{
    unsigned char *zl, *fptr = NULL, *vptr = NULL;
    int ret;

    FUNC1(o->encoding == OBJ_ENCODING_ZIPLIST);

    zl = o->ptr;
    fptr = FUNC4(zl, ZIPLIST_HEAD);
    if (fptr != NULL) {
        fptr = FUNC2(fptr, (unsigned char*)field, FUNC0(field), 1);
        if (fptr != NULL) {
            /* Grab pointer to the value (fptr points to the field) */
            vptr = FUNC5(zl, fptr);
            FUNC1(vptr != NULL);
        }
    }

    if (vptr != NULL) {
        ret = FUNC3(vptr, vstr, vlen, vll);
        FUNC1(ret);
        return 0;
    }

    return -1;
}
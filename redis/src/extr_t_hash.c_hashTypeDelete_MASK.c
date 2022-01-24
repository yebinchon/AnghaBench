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
typedef  int /*<<< orphan*/  dict ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 scalar_t__ OBJ_ENCODING_HT ; 
 scalar_t__ OBJ_ENCODING_ZIPLIST ; 
 int /*<<< orphan*/  ZIPLIST_HEAD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 scalar_t__ FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 unsigned char* FUNC5 (unsigned char*,unsigned char**) ; 
 unsigned char* FUNC6 (unsigned char*,unsigned char*,int /*<<< orphan*/ ,int) ; 
 unsigned char* FUNC7 (unsigned char*,int /*<<< orphan*/ ) ; 

int FUNC8(robj *o, sds field) {
    int deleted = 0;

    if (o->encoding == OBJ_ENCODING_ZIPLIST) {
        unsigned char *zl, *fptr;

        zl = o->ptr;
        fptr = FUNC7(zl, ZIPLIST_HEAD);
        if (fptr != NULL) {
            fptr = FUNC6(fptr, (unsigned char*)field, FUNC3(field), 1);
            if (fptr != NULL) {
                zl = FUNC5(zl,&fptr); /* Delete the key. */
                zl = FUNC5(zl,&fptr); /* Delete the value. */
                o->ptr = zl;
                deleted = 1;
            }
        }
    } else if (o->encoding == OBJ_ENCODING_HT) {
        if (FUNC0((dict*)o->ptr, field) == C_OK) {
            deleted = 1;

            /* Always check if the dictionary needs a resize after a delete. */
            if (FUNC2(o->ptr)) FUNC1(o->ptr);
        }

    } else {
        FUNC4("Unknown hash encoding");
    }
    return deleted;
}
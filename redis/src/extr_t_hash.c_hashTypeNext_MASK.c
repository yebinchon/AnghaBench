#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ encoding; unsigned char* fptr; unsigned char* vptr; int /*<<< orphan*/  di; int /*<<< orphan*/ * de; TYPE_1__* subject; } ;
typedef  TYPE_2__ hashTypeIterator ;
struct TYPE_4__ {unsigned char* ptr; } ;

/* Variables and functions */
 int C_ERR ; 
 int C_OK ; 
 scalar_t__ OBJ_ENCODING_HT ; 
 scalar_t__ OBJ_ENCODING_ZIPLIST ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 unsigned char* FUNC3 (unsigned char*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC4 (unsigned char*,unsigned char*) ; 

int FUNC5(hashTypeIterator *hi) {
    if (hi->encoding == OBJ_ENCODING_ZIPLIST) {
        unsigned char *zl;
        unsigned char *fptr, *vptr;

        zl = hi->subject->ptr;
        fptr = hi->fptr;
        vptr = hi->vptr;

        if (fptr == NULL) {
            /* Initialize cursor */
            FUNC1(vptr == NULL);
            fptr = FUNC3(zl, 0);
        } else {
            /* Advance cursor */
            FUNC1(vptr != NULL);
            fptr = FUNC4(zl, vptr);
        }
        if (fptr == NULL) return C_ERR;

        /* Grab pointer to the value (fptr points to the field) */
        vptr = FUNC4(zl, fptr);
        FUNC1(vptr != NULL);

        /* fptr, vptr now point to the first or next pair */
        hi->fptr = fptr;
        hi->vptr = vptr;
    } else if (hi->encoding == OBJ_ENCODING_HT) {
        if ((hi->de = FUNC0(hi->di)) == NULL) return C_ERR;
    } else {
        FUNC2("Unknown hash encoding");
    }
    return C_OK;
}
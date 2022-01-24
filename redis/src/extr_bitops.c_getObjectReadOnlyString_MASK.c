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
struct TYPE_3__ {scalar_t__ type; scalar_t__ encoding; scalar_t__ ptr; } ;
typedef  TYPE_1__ robj ;

/* Variables and functions */
 int /*<<< orphan*/  LONG_STR_SIZE ; 
 scalar_t__ OBJ_ENCODING_INT ; 
 scalar_t__ OBJ_STRING ; 
 long FUNC0 (char*,int /*<<< orphan*/ ,long) ; 
 long FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

unsigned char *FUNC3(robj *o, long *len, char *llbuf) {
    FUNC2(o->type == OBJ_STRING);
    unsigned char *p = NULL;

    /* Set the 'p' pointer to the string, that can be just a stack allocated
     * array if our string was integer encoded. */
    if (o && o->encoding == OBJ_ENCODING_INT) {
        p = (unsigned char*) llbuf;
        if (len) *len = FUNC0(llbuf,LONG_STR_SIZE,(long)o->ptr);
    } else if (o) {
        p = (unsigned char*) o->ptr;
        if (len) *len = FUNC1(o->ptr);
    } else {
        if (len) *len = 0;
    }
    return p;
}
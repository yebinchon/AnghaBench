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
struct TYPE_3__ {scalar_t__ encoding; void* ptr; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  llstr ;

/* Variables and functions */
 int LONG_STR_SIZE ; 
 scalar_t__ OBJ_ENCODING_INT ; 
 int /*<<< orphan*/  FUNC0 (void*,size_t) ; 
 size_t FUNC1 (char*,int,long) ; 
 size_t FUNC2 (void*) ; 

void FUNC3(robj *o) {
    char llstr[LONG_STR_SIZE];
    void *p;
    size_t len;

    if (o->encoding == OBJ_ENCODING_INT) {
        len = FUNC1(llstr,sizeof(llstr),(long)o->ptr);
        p = llstr;
    } else {
        len = FUNC2(o->ptr);
        p = o->ptr;
    }
    FUNC0(p,len);
}
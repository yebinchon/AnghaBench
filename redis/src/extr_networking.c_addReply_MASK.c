#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* ptr; scalar_t__ encoding; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  client ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 scalar_t__ OBJ_ENCODING_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 size_t FUNC2 (char*,int,long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 size_t FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(client *c, robj *obj) {
    if (FUNC3(c) != C_OK) return;

    if (FUNC4(obj)) {
        if (FUNC1(c,obj->ptr,FUNC5(obj->ptr)) != C_OK)
            FUNC0(c,obj->ptr,FUNC5(obj->ptr));
    } else if (obj->encoding == OBJ_ENCODING_INT) {
        /* For integer encoded strings we just convert it into a string
         * using our optimized function, and attach the resulting string
         * to the output buffer. */
        char buf[32];
        size_t len = FUNC2(buf,sizeof(buf),(long)obj->ptr);
        if (FUNC1(c,buf,len) != C_OK)
            FUNC0(c,buf,len);
    } else {
        FUNC6("Wrong obj->encoding in addReply()");
    }
}
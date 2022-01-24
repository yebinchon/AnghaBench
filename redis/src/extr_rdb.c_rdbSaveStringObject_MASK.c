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
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_5__ {scalar_t__ encoding; scalar_t__ ptr; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  rio ;

/* Variables and functions */
 scalar_t__ OBJ_ENCODING_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

ssize_t FUNC5(rio *rdb, robj *obj) {
    /* Avoid to decode the object, then encode it again, if the
     * object is already integer encoded. */
    if (obj->encoding == OBJ_ENCODING_INT) {
        return FUNC0(rdb,(long)obj->ptr);
    } else {
        FUNC4(NULL,obj,FUNC2(obj));
        return FUNC1(rdb,obj->ptr,FUNC3(obj->ptr));
    }
}
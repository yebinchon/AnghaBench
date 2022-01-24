#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int refcount; int type; } ;
typedef  TYPE_1__ robj ;

/* Variables and functions */
#define  OBJ_HASH 134 
#define  OBJ_LIST 133 
#define  OBJ_MODULE 132 
#define  OBJ_SET 131 
 int OBJ_SHARED_REFCOUNT ; 
#define  OBJ_STREAM 130 
#define  OBJ_STRING 129 
#define  OBJ_ZSET 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void FUNC9(robj *o) {
    if (o->refcount == 1) {
        switch(o->type) {
        case OBJ_STRING: FUNC5(o); break;
        case OBJ_LIST: FUNC1(o); break;
        case OBJ_SET: FUNC3(o); break;
        case OBJ_ZSET: FUNC6(o); break;
        case OBJ_HASH: FUNC0(o); break;
        case OBJ_MODULE: FUNC2(o); break;
        case OBJ_STREAM: FUNC4(o); break;
        default: FUNC7("Unknown object type"); break;
        }
        FUNC8(o);
    } else {
        if (o->refcount <= 0) FUNC7("decrRefCount against refcount <= 0");
        if (o->refcount != OBJ_SHARED_REFCOUNT) o->refcount--;
    }
}
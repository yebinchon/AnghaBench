#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  zsl; int /*<<< orphan*/  dict; } ;
typedef  TYPE_1__ zset ;
struct TYPE_6__ {int encoding; TYPE_1__* ptr; } ;
typedef  TYPE_2__ robj ;

/* Variables and functions */
#define  OBJ_ENCODING_SKIPLIST 129 
#define  OBJ_ENCODING_ZIPLIST 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(robj *o) {
    zset *zs;
    switch (o->encoding) {
    case OBJ_ENCODING_SKIPLIST:
        zs = o->ptr;
        FUNC0(zs->dict);
        FUNC3(zs->zsl);
        FUNC2(zs);
        break;
    case OBJ_ENCODING_ZIPLIST:
        FUNC2(o->ptr);
        break;
    default:
        FUNC1("Unknown sorted set encoding");
    }
}
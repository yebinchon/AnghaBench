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
struct TYPE_5__ {scalar_t__ type; int encoding; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;

/* Variables and functions */
#define  OBJ_ENCODING_EMBSTR 129 
#define  OBJ_ENCODING_RAW 128 
 scalar_t__ OBJ_STRING ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

size_t FUNC3(robj *o) {
    FUNC1(NULL,o,o->type == OBJ_STRING);
    switch(o->encoding) {
    case OBJ_ENCODING_RAW: return FUNC0(o->ptr);
    case OBJ_ENCODING_EMBSTR: return FUNC2(o)-sizeof(robj);
    default: return 0; /* Just integer encoding for now. */
    }
}
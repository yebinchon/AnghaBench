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
typedef  int /*<<< orphan*/ * sds ;
struct TYPE_3__ {scalar_t__ encoding; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  dictEntry ;

/* Variables and functions */
 scalar_t__ OBJ_ENCODING_HT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

sds FUNC3(robj *o, sds field) {
    dictEntry *de;

    FUNC2(o->encoding == OBJ_ENCODING_HT);

    de = FUNC0(o->ptr, field);
    if (de == NULL) return NULL;
    return FUNC1(de);
}
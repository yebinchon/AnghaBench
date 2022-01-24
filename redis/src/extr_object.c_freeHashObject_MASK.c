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
struct TYPE_3__ {int encoding; scalar_t__ ptr; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  dict ;

/* Variables and functions */
#define  OBJ_ENCODING_HT 129 
#define  OBJ_ENCODING_ZIPLIST 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(robj *o) {
    switch (o->encoding) {
    case OBJ_ENCODING_HT:
        FUNC0((dict*) o->ptr);
        break;
    case OBJ_ENCODING_ZIPLIST:
        FUNC2(o->ptr);
        break;
    default:
        FUNC1("Unknown hash encoding type");
        break;
    }
}
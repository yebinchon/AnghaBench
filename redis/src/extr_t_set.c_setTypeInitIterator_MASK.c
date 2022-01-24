#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ encoding; scalar_t__ ii; int /*<<< orphan*/  di; TYPE_2__* subject; } ;
typedef  TYPE_1__ setTypeIterator ;
struct TYPE_7__ {scalar_t__ encoding; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ robj ;

/* Variables and functions */
 scalar_t__ OBJ_ENCODING_HT ; 
 scalar_t__ OBJ_ENCODING_INTSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int) ; 

setTypeIterator *FUNC3(robj *subject) {
    setTypeIterator *si = FUNC2(sizeof(setTypeIterator));
    si->subject = subject;
    si->encoding = subject->encoding;
    if (si->encoding == OBJ_ENCODING_HT) {
        si->di = FUNC0(subject->ptr);
    } else if (si->encoding == OBJ_ENCODING_INTSET) {
        si->ii = 0;
    } else {
        FUNC1("Unknown set encoding");
    }
    return si;
}
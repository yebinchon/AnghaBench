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
struct TYPE_4__ {int lru; } ;
typedef  TYPE_1__ robj ;

/* Variables and functions */
 unsigned long FUNC0 (TYPE_1__*) ; 
 int FUNC1 () ; 
 unsigned long FUNC2 (unsigned long) ; 

void FUNC3(robj *val) {
    unsigned long counter = FUNC0(val);
    counter = FUNC2(counter);
    val->lru = (FUNC1()<<8) | counter;
}
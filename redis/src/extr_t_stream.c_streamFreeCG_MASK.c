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
struct TYPE_4__ {int /*<<< orphan*/  consumers; int /*<<< orphan*/  pel; } ;
typedef  TYPE_1__ streamCG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void (*) (void*)) ; 
 scalar_t__ streamFreeConsumer ; 
 scalar_t__ streamFreeNACK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(streamCG *cg) {
    FUNC0(cg->pel,(void(*)(void*))streamFreeNACK);
    FUNC0(cg->consumers,(void(*)(void*))streamFreeConsumer);
    FUNC1(cg);
}
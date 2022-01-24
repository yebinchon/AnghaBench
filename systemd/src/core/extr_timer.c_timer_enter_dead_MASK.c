#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ TimerResult ;
struct TYPE_6__ {scalar_t__ result; } ;
typedef  TYPE_1__ Timer ;

/* Variables and functions */
 int /*<<< orphan*/  TIMER_DEAD ; 
 int /*<<< orphan*/  TIMER_FAILED ; 
 scalar_t__ TIMER_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(Timer *t, TimerResult f) {
        FUNC1(t);

        if (t->result == TIMER_SUCCESS)
                t->result = f;

        FUNC4(FUNC0(t), t->result == TIMER_SUCCESS, FUNC2(t->result));
        FUNC3(t, t->result != TIMER_SUCCESS ? TIMER_FAILED : TIMER_DEAD);
}
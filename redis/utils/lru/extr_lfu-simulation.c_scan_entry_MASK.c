#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
struct entry {int counter; int /*<<< orphan*/  decrtime; } ;

/* Variables and functions */
 int COUNTER_INIT_VAL ; 
 scalar_t__ decr_every ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

uint8_t FUNC3(struct entry *e) {
    if (FUNC0(FUNC2(FUNC1(NULL)),e->decrtime)
        >= decr_every)
    {
        if (e->counter) {
            if (e->counter > COUNTER_INIT_VAL*2) {
                e->counter /= 2;
            } else {
                e->counter--;
            }
        }
        e->decrtime = FUNC2(FUNC1(NULL));
    }
    return e->counter;
}
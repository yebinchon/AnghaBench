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
struct TYPE_4__ {int /*<<< orphan*/  result; int /*<<< orphan*/  active_state; int /*<<< orphan*/  event; int /*<<< orphan*/  bus; int /*<<< orphan*/  match; int /*<<< orphan*/  forward; } ;
typedef  TYPE_1__ RunContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(RunContext *c) {
        FUNC0(c);

        c->forward = FUNC2(c->forward);
        c->match = FUNC3(c->match);
        c->bus = FUNC4(c->bus);
        c->event = FUNC5(c->event);

        FUNC1(c->active_state);
        FUNC1(c->result);
}
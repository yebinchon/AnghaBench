#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  instances; struct TYPE_5__* pattern; } ;
struct TYPE_4__ {size_t n_rules; TYPE_3__* rules; } ;
typedef  TYPE_1__ Presets ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(Presets *p) {
        size_t i;

        if (!p)
                return;

        for (i = 0; i < p->n_rules; i++) {
                FUNC0(p->rules[i].pattern);
                FUNC1(p->rules[i].instances);
        }

        FUNC0(p->rules);
        p->n_rules = 0;
}
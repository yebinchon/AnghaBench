#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* data; TYPE_1__* parent; struct TYPE_8__* matches; } ;
struct TYPE_7__ {int /*<<< orphan*/  matches; } ;
typedef  TYPE_2__ Match ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  matches ; 

__attribute__((used)) static void FUNC3(Match *m) {
        FUNC1(m);

        while (m->matches)
                FUNC3(m->matches);

        if (m->parent)
                FUNC0(matches, m->parent->matches, m);

        FUNC2(m->data);
        FUNC2(m);
}
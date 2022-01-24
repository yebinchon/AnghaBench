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
struct TYPE_7__ {struct TYPE_7__* name; scalar_t__ section; TYPE_1__* tunnel; } ;
struct TYPE_6__ {int /*<<< orphan*/  sessions_by_section; } ;
typedef  TYPE_2__ L2tpSession ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(L2tpSession *s) {
        if (!s)
                return;

        if (s->tunnel && s->section)
                FUNC2(s->tunnel->sessions_by_section, s);

        FUNC1(s->section);

        FUNC0(s->name);

        FUNC0(s);
}
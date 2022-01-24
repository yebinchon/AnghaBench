#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ type; } ;
typedef  TYPE_1__ Unit ;
struct TYPE_10__ {int /*<<< orphan*/  (* done ) (TYPE_1__*) ;} ;
typedef  int /*<<< orphan*/  ExecContext ;
typedef  int /*<<< orphan*/  CGroupContext ;

/* Variables and functions */
 TYPE_7__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(Unit *u) {
        ExecContext *ec;
        CGroupContext *cc;

        FUNC1(u);

        if (u->type < 0)
                return;

        if (FUNC0(u)->done)
                FUNC0(u)->done(u);

        ec = FUNC6(u);
        if (ec)
                FUNC3(ec);

        cc = FUNC5(u);
        if (cc)
                FUNC2(cc);
}
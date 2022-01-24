#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  description; int /*<<< orphan*/  id; scalar_t__ fragment_path; } ;
typedef  TYPE_1__ Unit ;
struct TYPE_16__ {int from_fragment; int /*<<< orphan*/  exec_context; int /*<<< orphan*/  where; } ;
typedef  TYPE_2__ Mount ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(Mount *m) {
        Unit *u = FUNC0(m);
        int r;

        FUNC1(m);

        /* Note: this call might be called after we already have been loaded once (and even when it has already been
         * activated), in case data from /proc/self/mountinfo has changed. This means all code here needs to be ready
         * to run with an already set up unit. */

        if (u->fragment_path)
                m->from_fragment = true;

        if (!m->where) {
                r = FUNC8(u->id, &m->where);
                if (r < 0)
                        return r;
        }

        FUNC6(m->where, false);

        if (!u->description) {
                r = FUNC11(u, m->where);
                if (r < 0)
                        return r;
        }

        r = FUNC3(m);
        if (r < 0)
                return r;

        r = FUNC4(m);
        if (r < 0)
                return r;

        r = FUNC5(m);
        if (r < 0)
                return r;

        r = FUNC9(u);
        if (r < 0)
                return r;

        r = FUNC7(u, &m->exec_context);
        if (r < 0)
                return r;

        r = FUNC10(u);
        if (r < 0)
                return r;

        r = FUNC2(m);
        if (r < 0)
                return r;

        return 0;
}
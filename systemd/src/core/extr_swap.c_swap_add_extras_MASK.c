#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  description; int /*<<< orphan*/  id; scalar_t__ fragment_path; } ;
struct TYPE_17__ {scalar_t__ what; } ;
struct TYPE_16__ {scalar_t__ what; } ;
struct TYPE_18__ {int from_fragment; int /*<<< orphan*/  exec_context; void* what; TYPE_2__ parameters_proc_swaps; TYPE_1__ parameters_fragment; } ;
typedef  TYPE_3__ Swap ;

/* Variables and functions */
 int ENOMEM ; 
 TYPE_4__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  UNIT_DEPENDENCY_IMPLICIT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 void* FUNC3 (scalar_t__) ; 
 int FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*) ; 
 int FUNC6 (TYPE_3__*) ; 
 int FUNC7 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,void**) ; 
 int FUNC9 (TYPE_4__*) ; 
 int FUNC10 (TYPE_4__*,void*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_4__*) ; 
 int FUNC12 (TYPE_4__*,void*) ; 

__attribute__((used)) static int FUNC13(Swap *s) {
        int r;

        FUNC1(s);

        if (FUNC0(s)->fragment_path)
                s->from_fragment = true;

        if (!s->what) {
                if (s->parameters_fragment.what)
                        s->what = FUNC3(s->parameters_fragment.what);
                else if (s->parameters_proc_swaps.what)
                        s->what = FUNC3(s->parameters_proc_swaps.what);
                else {
                        r = FUNC8(FUNC0(s)->id, &s->what);
                        if (r < 0)
                                return r;
                }

                if (!s->what)
                        return -ENOMEM;
        }

        FUNC2(s->what, false);

        if (!FUNC0(s)->description) {
                r = FUNC12(FUNC0(s), s->what);
                if (r < 0)
                        return r;
        }

        r = FUNC10(FUNC0(s), s->what, UNIT_DEPENDENCY_IMPLICIT);
        if (r < 0)
                return r;

        r = FUNC5(s);
        if (r < 0)
                return r;

        r = FUNC6(s);
        if (r < 0)
                return r;

        r = FUNC9(FUNC0(s));
        if (r < 0)
                return r;

        r = FUNC7(FUNC0(s), &s->exec_context);
        if (r < 0)
                return r;

        r = FUNC11(FUNC0(s));
        if (r < 0)
                return r;

        r = FUNC4(s);
        if (r < 0)
                return r;

        return 0;
}
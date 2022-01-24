#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* type_argument; int /*<<< orphan*/  lower; struct TYPE_5__* rm_rf_tmpdir; struct TYPE_5__* work_dir; struct TYPE_5__* options; struct TYPE_5__* destination; struct TYPE_5__* source; } ;
typedef  TYPE_1__ CustomMount ;

/* Variables and functions */
 int REMOVE_PHYSICAL ; 
 int REMOVE_ROOT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(CustomMount *l, size_t n) {
        size_t i;

        for (i = 0; i < n; i++) {
                CustomMount *m = l + i;

                FUNC0(m->source);
                FUNC0(m->destination);
                FUNC0(m->options);

                if (m->work_dir) {
                        (void) FUNC1(m->work_dir, REMOVE_ROOT|REMOVE_PHYSICAL);
                        FUNC0(m->work_dir);
                }

                if (m->rm_rf_tmpdir) {
                        (void) FUNC1(m->rm_rf_tmpdir, REMOVE_ROOT|REMOVE_PHYSICAL);
                        FUNC0(m->rm_rf_tmpdir);
                }

                FUNC2(m->lower);
                FUNC0(m->type_argument);
        }

        FUNC0(l);
}
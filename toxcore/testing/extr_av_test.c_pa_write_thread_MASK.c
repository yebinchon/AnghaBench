#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ frame ;
struct TYPE_5__ {int /*<<< orphan*/  arb_mutex; int /*<<< orphan*/  arb; } ;
typedef  TYPE_2__ CallControl ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adout ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,void**) ; 

void *FUNC7 (void *d)
{
    /* The purpose of this thread is to make sure Pa_WriteStream will not block
     * toxav_iterate thread
     */
    CallControl *cc = d;

    while (FUNC0(adout)) {
        frame *f;
        FUNC4(cc->arb_mutex);

        if (FUNC6(cc->arb, (void **)&f)) {
            FUNC5(cc->arb_mutex);
            FUNC1(adout, f->data, f->size);
            FUNC3(f);
        } else {
            FUNC5(cc->arb_mutex);
            FUNC2(10);
        }
    }
}
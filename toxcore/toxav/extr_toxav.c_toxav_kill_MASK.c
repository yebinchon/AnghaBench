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
typedef  int /*<<< orphan*/  ToxAVCall ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  calls_head; scalar_t__ calls; scalar_t__ msi; } ;
typedef  TYPE_1__ ToxAV ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(ToxAV *av)
{
    if (av == NULL)
        return;

    FUNC6(av->mutex);

    /* To avoid possible deadlocks */
    while (av->msi && FUNC4(av->msi) != 0) {
        FUNC7(av->mutex);
        FUNC6(av->mutex);
    }

    /* Msi kill will hang up all calls so just clean these calls */
    if (av->calls) {
        ToxAVCall *it = FUNC0(av, av->calls_head);

        while (it) {
            FUNC1(it);
            it = FUNC2(it); /* This will eventually free av->calls */
        }
    }

    FUNC7(av->mutex);
    FUNC5(av->mutex);

    FUNC3(av);
}
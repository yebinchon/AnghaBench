#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct seat_data {scalar_t__ version; int /*<<< orphan*/  seat; int /*<<< orphan*/ * xkb; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 scalar_t__ WL_SEAT_RELEASE_SINCE_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct seat_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct seat_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct seat_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct seat_data *sd)
{
    FUNC3(&sd->node);

#ifdef HAVE_XKBCOMMON
    keyboard_destroy(sd);

    if (sd->xkb != NULL)
        xkb_context_unref(sd->xkb);
#endif
    FUNC2(sd);

    if (sd->version >= WL_SEAT_RELEASE_SINCE_VERSION)
        FUNC5(sd->seat);
    else
        FUNC4(sd->seat);
    FUNC0(sd);
}
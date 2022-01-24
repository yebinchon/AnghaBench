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
struct seat_data {int /*<<< orphan*/  cursor_deadline; int /*<<< orphan*/  owner; int /*<<< orphan*/  cursor_timeout; int /*<<< orphan*/ * pointer; int /*<<< orphan*/  seat; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pointer_cbs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct seat_data*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct seat_data *sd)
{
    if (sd->pointer != NULL)
        return;

    sd->pointer = FUNC4(sd->seat);
    if (FUNC1(sd->pointer != NULL))
        FUNC3(sd->pointer, &pointer_cbs, sd);

    sd->cursor_timeout = FUNC0( FUNC2(sd->owner, "mouse-hide-timeout") );
    sd->cursor_deadline = INT64_MAX;
}
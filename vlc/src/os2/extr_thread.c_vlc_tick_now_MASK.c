#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_3__ {int /*<<< orphan*/  rem; int /*<<< orphan*/  quot; } ;
typedef  TYPE_1__ lldiv_t ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  QWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

vlc_tick_t FUNC7 (void)
{
    /* We don't need the real date, just the value of a high precision timer */
    QWORD counter;
    ULONG freq;
    if (FUNC1(&counter) || FUNC0(&freq))
        FUNC3();

    /* Convert to from (1/freq) to microsecond resolution */
    /* We need to split the division to avoid 63-bits overflow */
    lldiv_t d = FUNC4 (FUNC2(counter), freq);

    return FUNC6( d.quot ) + FUNC5(d.rem, freq);
}
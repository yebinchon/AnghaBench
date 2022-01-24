#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  denom; int /*<<< orphan*/  numer; } ;
typedef  TYPE_1__ mach_timebase_info_data_t ;
struct TYPE_7__ {scalar_t__ rem; scalar_t__ quot; } ;
typedef  TYPE_2__ lldiv_t ;
struct TYPE_8__ {int /*<<< orphan*/  divider; void* remainder; void* quotient; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int) ; 
 TYPE_3__ vlc_clock_conversion ; 

__attribute__((used)) static void FUNC4 (void)
{
    mach_timebase_info_data_t timebase;
    if (FUNC3(FUNC2 (&timebase) != 0))
        FUNC0 ();
    lldiv_t d = FUNC1 (timebase.numer, timebase.denom);
    vlc_clock_conversion.quotient = (uint32_t)d.quot;
    vlc_clock_conversion.remainder = (uint32_t)d.rem;
    vlc_clock_conversion.divider = timebase.denom;
}
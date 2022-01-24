#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ vlc_inhibit_t ;
struct TYPE_8__ {scalar_t__ inh_assertion_id; int /*<<< orphan*/  act_assertion_id; } ;
typedef  TYPE_2__ vlc_inhibit_sys_t ;
typedef  scalar_t__ IOReturn ;
typedef  int /*<<< orphan*/  CFStringRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 unsigned int VLC_INHIBIT_DISPLAY ; 
 unsigned int VLC_INHIBIT_NONE ; 
 unsigned int VLC_INHIBIT_SUSPEND ; 
 int /*<<< orphan*/  kIOPMAssertPreventUserIdleDisplaySleep ; 
 int /*<<< orphan*/  kIOPMAssertPreventUserIdleSystemSleep ; 
 int /*<<< orphan*/  kIOPMAssertionLevelOn ; 
 scalar_t__ kIOPMNullAssertionID ; 
 int /*<<< orphan*/  kIOPMUserActiveLocal ; 
 scalar_t__ kIOReturnSuccess ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,unsigned int) ; 

__attribute__((used)) static void FUNC7(vlc_inhibit_t *ih, unsigned mask)
{
    vlc_inhibit_sys_t* sys = ih->p_sys;

    // Release existing inhibition, if any
    if (sys->inh_assertion_id != kIOPMNullAssertionID) {
        FUNC4(ih, "Releasing previous IOPMAssertion");
        if (FUNC3(sys->inh_assertion_id) != kIOReturnSuccess) {
            FUNC5(ih, "Failed releasing previous IOPMAssertion, "
                "not acquiring new one!");
        }
        sys->inh_assertion_id = kIOPMNullAssertionID;
    }

    // Order is important here, if we prevent display sleep, it means
    // we automatically prevent idle sleep too.

    IOReturn ret;
    if ((mask & VLC_INHIBIT_DISPLAY) == VLC_INHIBIT_DISPLAY) {

        // Display inhibition
        CFStringRef activity_reason = FUNC0("VLC video playback");

        FUNC4(ih, "Inhibiting display sleep");

        // Wake up display
        ret = FUNC2(activity_reason,
                                               kIOPMUserActiveLocal,
                                               &(sys->act_assertion_id));
        if (ret != kIOReturnSuccess) {
            FUNC6(ih, "Failed to declare user activity (%i)", ret);
        }

        // Actual display inhibition assertion
        ret = FUNC1(kIOPMAssertPreventUserIdleDisplaySleep,
                                          kIOPMAssertionLevelOn,
                                          activity_reason,
                                          &(sys->inh_assertion_id));

    } else if ((mask & VLC_INHIBIT_SUSPEND) == VLC_INHIBIT_SUSPEND) {

        // Idle sleep inhibition
        CFStringRef activity_reason = FUNC0("VLC audio playback");

        FUNC4(ih, "Inhibiting idle sleep");

        ret = FUNC1(kIOPMAssertPreventUserIdleSystemSleep,
                                          kIOPMAssertionLevelOn,
                                          activity_reason,
                                          &(sys->inh_assertion_id));

    } else if ((mask & VLC_INHIBIT_NONE) == VLC_INHIBIT_NONE) {
        FUNC4(ih, "Removed previous inhibition");
        return;
    } else {
         FUNC6(ih, "Unhandled inhibiton mask (%i)", mask);
         return;
    }

    if (ret != kIOReturnSuccess) {
        FUNC5(ih, "Failed creating IOPMAssertion (%i)", ret);
        return;
    }
}
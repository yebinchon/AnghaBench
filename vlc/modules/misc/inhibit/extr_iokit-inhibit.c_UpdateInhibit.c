
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ vlc_inhibit_t ;
struct TYPE_8__ {scalar_t__ inh_assertion_id; int act_assertion_id; } ;
typedef TYPE_2__ vlc_inhibit_sys_t ;
typedef scalar_t__ IOReturn ;
typedef int CFStringRef ;


 int CFSTR (char*) ;
 scalar_t__ IOPMAssertionCreateWithName (int ,int ,int ,scalar_t__*) ;
 scalar_t__ IOPMAssertionDeclareUserActivity (int ,int ,int *) ;
 scalar_t__ IOPMAssertionRelease (scalar_t__) ;
 unsigned int VLC_INHIBIT_DISPLAY ;
 unsigned int VLC_INHIBIT_NONE ;
 unsigned int VLC_INHIBIT_SUSPEND ;
 int kIOPMAssertPreventUserIdleDisplaySleep ;
 int kIOPMAssertPreventUserIdleSystemSleep ;
 int kIOPMAssertionLevelOn ;
 scalar_t__ kIOPMNullAssertionID ;
 int kIOPMUserActiveLocal ;
 scalar_t__ kIOReturnSuccess ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int msg_Err (TYPE_1__*,char*,...) ;
 int msg_Warn (TYPE_1__*,char*,unsigned int) ;

__attribute__((used)) static void UpdateInhibit(vlc_inhibit_t *ih, unsigned mask)
{
    vlc_inhibit_sys_t* sys = ih->p_sys;


    if (sys->inh_assertion_id != kIOPMNullAssertionID) {
        msg_Dbg(ih, "Releasing previous IOPMAssertion");
        if (IOPMAssertionRelease(sys->inh_assertion_id) != kIOReturnSuccess) {
            msg_Err(ih, "Failed releasing previous IOPMAssertion, "
                "not acquiring new one!");
        }
        sys->inh_assertion_id = kIOPMNullAssertionID;
    }




    IOReturn ret;
    if ((mask & VLC_INHIBIT_DISPLAY) == VLC_INHIBIT_DISPLAY) {


        CFStringRef activity_reason = CFSTR("VLC video playback");

        msg_Dbg(ih, "Inhibiting display sleep");


        ret = IOPMAssertionDeclareUserActivity(activity_reason,
                                               kIOPMUserActiveLocal,
                                               &(sys->act_assertion_id));
        if (ret != kIOReturnSuccess) {
            msg_Warn(ih, "Failed to declare user activity (%i)", ret);
        }


        ret = IOPMAssertionCreateWithName(kIOPMAssertPreventUserIdleDisplaySleep,
                                          kIOPMAssertionLevelOn,
                                          activity_reason,
                                          &(sys->inh_assertion_id));

    } else if ((mask & VLC_INHIBIT_SUSPEND) == VLC_INHIBIT_SUSPEND) {


        CFStringRef activity_reason = CFSTR("VLC audio playback");

        msg_Dbg(ih, "Inhibiting idle sleep");

        ret = IOPMAssertionCreateWithName(kIOPMAssertPreventUserIdleSystemSleep,
                                          kIOPMAssertionLevelOn,
                                          activity_reason,
                                          &(sys->inh_assertion_id));

    } else if ((mask & VLC_INHIBIT_NONE) == VLC_INHIBIT_NONE) {
        msg_Dbg(ih, "Removed previous inhibition");
        return;
    } else {
         msg_Warn(ih, "Unhandled inhibiton mask (%i)", mask);
         return;
    }

    if (ret != kIOReturnSuccess) {
        msg_Err(ih, "Failed creating IOPMAssertion (%i)", ret);
        return;
    }
}

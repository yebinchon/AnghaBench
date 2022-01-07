
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ vlc_inhibit_t ;
struct TYPE_6__ {scalar_t__ inh_assertion_id; scalar_t__ act_assertion_id; } ;
typedef TYPE_2__ vlc_inhibit_sys_t ;


 scalar_t__ IOPMAssertionRelease (scalar_t__) ;
 scalar_t__ kIOPMNullAssertionID ;
 scalar_t__ kIOReturnSuccess ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int msg_Warn (TYPE_1__*,char*) ;

__attribute__((used)) static void CloseInhibit(vlc_object_t *obj)
{
    vlc_inhibit_t *ih = (vlc_inhibit_t*)obj;
    vlc_inhibit_sys_t* sys = ih->p_sys;


    if (sys->inh_assertion_id != kIOPMNullAssertionID) {
        msg_Dbg(ih, "Releasing remaining IOPMAssertion (inhibition)");

        if (IOPMAssertionRelease(sys->inh_assertion_id) != kIOReturnSuccess) {
            msg_Warn(ih, "Failed releasing IOPMAssertion on termination");
        }
        sys->inh_assertion_id = kIOPMNullAssertionID;
    }


    if (sys->act_assertion_id != kIOPMNullAssertionID) {
        msg_Dbg(ih, "Releasing remaining IOPMAssertion (activity)");

        if (IOPMAssertionRelease(sys->act_assertion_id) != kIOReturnSuccess) {
            msg_Warn(ih, "Failed releasing IOPMAssertion on termination");
        }
        sys->act_assertion_id = kIOPMNullAssertionID;
    }
}

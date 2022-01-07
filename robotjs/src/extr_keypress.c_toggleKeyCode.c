
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ kern_return_t ;
typedef int UInt32 ;
struct TYPE_11__ {int member_1; int member_0; } ;
struct TYPE_8__ {int* L; } ;
struct TYPE_9__ {TYPE_1__ misc; int subType; } ;
struct TYPE_10__ {TYPE_2__ compound; } ;
typedef TYPE_3__ NXEventData ;
typedef int MMKeyFlags ;
typedef int MMKeyCode ;
typedef TYPE_4__ IOGPoint ;
typedef int Display ;
typedef int DWORD ;
typedef int CGKeyCode ;
typedef int * CGEventRef ;
typedef int Bool ;


 int CFRelease (int *) ;
 int * CGEventCreateKeyboardEvent (int *,int ,int const) ;
 int CGEventPost (int ,int *) ;
 int CGEventSetFlags (int *,int) ;
 int CGEventSetType (int *,int ) ;
 int FALSE ;
 int False ;
 scalar_t__ IOHIDPostEvent (int ,int ,TYPE_4__,TYPE_3__*,int ,int ,int ) ;
 scalar_t__ KERN_SUCCESS ;
 int KEYEVENTF_KEYUP ;
 int K_ALT ;
 int K_CONTROL ;
 int K_META ;
 int K_SHIFT ;
 int MOD_ALT ;
 int MOD_CONTROL ;
 int MOD_META ;
 int MOD_SHIFT ;
 int NX_KEYDOWN ;
 int NX_KEYUP ;
 int NX_SUBTYPE_AUX_CONTROL_BUTTONS ;
 int NX_SYSDEFINED ;
 int True ;
 int WIN32_KEY_EVENT_WAIT (int ,int const) ;
 int * XGetMainDisplay () ;
 int X_KEY_EVENT (int *,int,int const) ;
 int X_KEY_EVENT_WAIT (int *,int ,int const) ;
 int _getAuxiliaryKeyDriver () ;
 int assert (int) ;
 int bzero (TYPE_3__*,int) ;
 int kCGEventKeyDown ;
 int kCGEventKeyUp ;
 int kCGSessionEventTap ;
 int kNXEventDataVersion ;
 int win32KeyEvent (int,int const) ;

void toggleKeyCode(MMKeyCode code, const bool down, MMKeyFlags flags)
{
}

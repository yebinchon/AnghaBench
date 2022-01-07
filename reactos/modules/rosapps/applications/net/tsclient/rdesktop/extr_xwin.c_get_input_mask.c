
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ grab_keyboard; scalar_t__ fullscreen; scalar_t__ ownbackstore; scalar_t__ sendmotion; } ;
typedef TYPE_1__ RDPCLIENT ;


 long ButtonPressMask ;
 long ButtonReleaseMask ;
 long EnterWindowMask ;
 long ExposureMask ;
 long FocusChangeMask ;
 long KeyPressMask ;
 long KeyReleaseMask ;
 long LeaveWindowMask ;
 long PointerMotionMask ;
 long StructureNotifyMask ;
 long VisibilityChangeMask ;

__attribute__((used)) static void
get_input_mask(RDPCLIENT * This, long *input_mask)
{
 *input_mask = KeyPressMask | KeyReleaseMask | ButtonPressMask | ButtonReleaseMask |
  VisibilityChangeMask | FocusChangeMask | StructureNotifyMask;

 if (This->sendmotion)
  *input_mask |= PointerMotionMask;
 if (This->ownbackstore)
  *input_mask |= ExposureMask;
 if (This->fullscreen || This->grab_keyboard)
  *input_mask |= EnterWindowMask;
 if (This->grab_keyboard)
  *input_mask |= LeaveWindowMask;
}

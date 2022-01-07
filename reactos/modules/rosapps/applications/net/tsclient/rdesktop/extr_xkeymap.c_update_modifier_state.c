
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ uint16 ;
struct TYPE_4__ {scalar_t__ remote_modifier_state; } ;
struct TYPE_5__ {TYPE_1__ xkeymap; int numlock_sync; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef int BOOL ;


 int DEBUG_KBD (char*) ;
 int False ;
 int MASK_CHANGE_BIT (scalar_t__,int ,int) ;
 int MASK_HAS_BITS (scalar_t__,int ) ;
 int MapLeftAltMask ;
 int MapLeftCtrlMask ;
 int MapLeftShiftMask ;
 int MapLeftWinMask ;
 int MapNumLockMask ;
 int MapRightAltMask ;
 int MapRightCtrlMask ;
 int MapRightShiftMask ;
 int MapRightWinMask ;
__attribute__((used)) static void
update_modifier_state(RDPCLIENT * This, uint8 scancode, BOOL pressed)
{






 switch (scancode)
 {
  case 134:
   MASK_CHANGE_BIT(This->xkeymap.remote_modifier_state, MapLeftShiftMask, pressed);
   break;
  case 129:
   MASK_CHANGE_BIT(This->xkeymap.remote_modifier_state, MapRightShiftMask, pressed);
   break;
  case 135:
   MASK_CHANGE_BIT(This->xkeymap.remote_modifier_state, MapLeftCtrlMask, pressed);
   break;
  case 130:
   MASK_CHANGE_BIT(This->xkeymap.remote_modifier_state, MapRightCtrlMask, pressed);
   break;
  case 136:
   MASK_CHANGE_BIT(This->xkeymap.remote_modifier_state, MapLeftAltMask, pressed);
   break;
  case 131:
   MASK_CHANGE_BIT(This->xkeymap.remote_modifier_state, MapRightAltMask, pressed);
   break;
  case 133:
   MASK_CHANGE_BIT(This->xkeymap.remote_modifier_state, MapLeftWinMask, pressed);
   break;
  case 128:
   MASK_CHANGE_BIT(This->xkeymap.remote_modifier_state, MapRightWinMask, pressed);
   break;
  case 132:


   if (pressed && !This->numlock_sync)
   {
    BOOL newNumLockState;
    newNumLockState =
     (MASK_HAS_BITS
      (This->xkeymap.remote_modifier_state, MapNumLockMask) == False);
    MASK_CHANGE_BIT(This->xkeymap.remote_modifier_state,
      MapNumLockMask, newNumLockState);
   }
 }
}

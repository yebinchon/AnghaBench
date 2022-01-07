
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32 ;
typedef scalar_t__ uint16 ;
struct TYPE_9__ {scalar_t__ modifiers; int scancode; } ;
typedef TYPE_2__ key_translation ;
struct TYPE_8__ {scalar_t__ remote_modifier_state; } ;
struct TYPE_10__ {TYPE_1__ xkeymap; int numlock_sync; } ;
typedef TYPE_3__ RDPCLIENT ;


 int DEBUG_KBD (char*) ;
 scalar_t__ KBD_FLAG_NUMLOCK ;
 scalar_t__ MASK_HAS_BITS (scalar_t__,scalar_t__) ;
 scalar_t__ MapAltGrMask ;
 scalar_t__ MapLeftShiftMask ;
 scalar_t__ MapNumLockMask ;
 scalar_t__ MapRightShiftMask ;
 scalar_t__ MapShiftMask ;
 int RDP_INPUT_SYNCHRONIZE ;
 int RDP_KEYPRESS ;
 int RDP_KEYRELEASE ;
 int SCANCODE_CHAR_LSHIFT ;
 int SCANCODE_CHAR_RALT ;
 int SCANCODE_CHAR_RSHIFT ;
 scalar_t__ is_modifier (int ) ;
 int rdp_send_input (TYPE_3__*,int ,int ,int ,scalar_t__,int ) ;
 int rdp_send_scancode (TYPE_3__*,int ,int ,int ) ;

void
ensure_remote_modifiers(RDPCLIENT * This, uint32 ev_time, key_translation tr)
{

 if (is_modifier(tr.scancode))
  return;

 if (!This->numlock_sync)
 {

  if (MASK_HAS_BITS(tr.modifiers, MapNumLockMask)
      != MASK_HAS_BITS(This->xkeymap.remote_modifier_state, MapNumLockMask))
  {

   uint16 new_remote_state;

   if (MASK_HAS_BITS(tr.modifiers, MapNumLockMask))
   {
    DEBUG_KBD(("Remote NumLock state is incorrect, activating NumLock.\n"));
    new_remote_state = KBD_FLAG_NUMLOCK;
    This->xkeymap.remote_modifier_state = MapNumLockMask;
   }
   else
   {
    DEBUG_KBD(("Remote NumLock state is incorrect, deactivating NumLock.\n"));
    new_remote_state = 0;
    This->xkeymap.remote_modifier_state = 0;
   }

   rdp_send_input(This, 0, RDP_INPUT_SYNCHRONIZE, 0, new_remote_state, 0);
  }
 }



 if (MASK_HAS_BITS(tr.modifiers, MapShiftMask)
     != MASK_HAS_BITS(This->xkeymap.remote_modifier_state, MapShiftMask))
 {

  if (MASK_HAS_BITS(tr.modifiers, MapLeftShiftMask))
  {

   rdp_send_scancode(This, ev_time, RDP_KEYPRESS, SCANCODE_CHAR_LSHIFT);
  }
  else if (MASK_HAS_BITS(tr.modifiers, MapRightShiftMask))
  {

   rdp_send_scancode(This, ev_time, RDP_KEYPRESS, SCANCODE_CHAR_RSHIFT);
  }
  else
  {

   if (MASK_HAS_BITS(This->xkeymap.remote_modifier_state, MapLeftShiftMask))

    rdp_send_scancode(This, ev_time, RDP_KEYRELEASE, SCANCODE_CHAR_LSHIFT);
   else

    rdp_send_scancode(This, ev_time, RDP_KEYRELEASE, SCANCODE_CHAR_RSHIFT);
  }
 }


 if (MASK_HAS_BITS(tr.modifiers, MapAltGrMask)
     != MASK_HAS_BITS(This->xkeymap.remote_modifier_state, MapAltGrMask))
 {

  if (MASK_HAS_BITS(tr.modifiers, MapAltGrMask))
  {

   rdp_send_scancode(This, ev_time, RDP_KEYPRESS, SCANCODE_CHAR_RALT);
  }
  else
  {

   rdp_send_scancode(This, ev_time, RDP_KEYRELEASE, SCANCODE_CHAR_RALT);
  }
 }


}

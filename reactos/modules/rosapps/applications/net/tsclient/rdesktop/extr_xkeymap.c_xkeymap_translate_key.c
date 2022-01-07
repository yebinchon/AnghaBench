
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32 ;
struct TYPE_7__ {scalar_t__ seq_keysym; unsigned int modifiers; unsigned int scancode; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_2__ key_translation ;
struct TYPE_6__ {unsigned int remote_modifier_state; int min_keycode; scalar_t__ keymap_loaded; TYPE_2__** keymap; } ;
struct TYPE_8__ {TYPE_1__ xkeymap; } ;
typedef TYPE_3__ RDPCLIENT ;


 int DEBUG_KBD (char*) ;
 size_t KEYMAP_MASK ;
 scalar_t__ MASK_HAS_BITS (unsigned int,int ) ;
 int MASK_REMOVE_BITS (unsigned int,int ) ;
 int MapCtrlMask ;
 int MapInhibitMask ;
 void* MapLeftShiftMask ;
 int MapLocalStateMask ;
 int MapShiftMask ;
 int ShiftMask ;
 int get_ksname (size_t) ;
 int warning (char*,size_t,int ) ;

key_translation
xkeymap_translate_key(RDPCLIENT * This, uint32 keysym, unsigned int keycode, unsigned int state)
{
 key_translation tr = { 0, 0, 0, 0 };
 key_translation *ptr;

 ptr = This->xkeymap.keymap[keysym & KEYMAP_MASK];
 if (ptr)
 {
  tr = *ptr;
  if (tr.seq_keysym == 0)
  {
   if (MASK_HAS_BITS(tr.modifiers, MapInhibitMask))
   {
    DEBUG_KBD(("Inhibiting key\n"));
    tr.scancode = 0;
    return tr;
   }

   if (MASK_HAS_BITS(tr.modifiers, MapLocalStateMask))
   {


    if (MASK_HAS_BITS(state, ShiftMask))
    {
     tr.modifiers = MapLeftShiftMask;
    }
   }







   if (MASK_HAS_BITS(tr.modifiers, MapShiftMask)
       && MASK_HAS_BITS(This->xkeymap.remote_modifier_state, MapCtrlMask)
       && !MASK_HAS_BITS(state, ShiftMask))
   {
    DEBUG_KBD(("Non-physical Shift + Ctrl pressed, releasing Shift\n"));
    MASK_REMOVE_BITS(tr.modifiers, MapShiftMask);
   }

   DEBUG_KBD(("Found scancode translation, scancode=0x%x, modifiers=0x%x\n",
       tr.scancode, tr.modifiers));
  }
 }
 else
 {
  if (This->xkeymap.keymap_loaded)
   warning("No translation for (keysym 0x%lx, %s)\n", keysym,
    get_ksname(keysym));


  if (((int) keycode >= This->xkeymap.min_keycode) && (keycode <= 0x60))
  {
   tr.scancode = keycode - This->xkeymap.min_keycode;




   if (MASK_HAS_BITS(state, ShiftMask))
   {
    tr.modifiers = MapLeftShiftMask;
   }

   DEBUG_KBD(("Sending guessed scancode 0x%x\n", tr.scancode));
  }
  else
  {
   DEBUG_KBD(("No good guess for keycode 0x%x found\n", keycode));
  }
 }

 return tr;
}

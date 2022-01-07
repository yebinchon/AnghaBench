
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct _rfbClientRec {int dummy; } ;
typedef scalar_t__ rfbKeySym ;
typedef scalar_t__ rfbBool ;
struct TYPE_4__ {scalar_t__ scancode; int member_1; int member_0; } ;
typedef TYPE_1__ key_translation ;


 scalar_t__ FIRST_MODIFIER ;
 int False ;
 scalar_t__ LAST_MODIFIER ;
 int RDP_KEYPRESS ;
 int RDP_KEYRELEASE ;
 int True ;
 int ensure_remote_modifiers (int ,TYPE_1__) ;
 scalar_t__ handle_special_keys (scalar_t__,int ,int ,int ) ;
 scalar_t__* keystate ;
 int rdp_send_scancode (int ,int ,scalar_t__) ;
 int time (int *) ;
 TYPE_1__ xkeymap_translate_key (scalar_t__,int ,int ) ;

void
vncKey(rfbBool down, rfbKeySym keysym, struct _rfbClientRec *cl)
{
 uint32 ev_time = time(((void*)0));
 key_translation tr = { 0, 0 };

 if (keysym >= FIRST_MODIFIER && keysym <= LAST_MODIFIER)
 {

  keystate[keysym - FIRST_MODIFIER] = down;
 }

 if (down)
 {

  if (handle_special_keys(keysym, 0, ev_time, True))
   return;


  tr = xkeymap_translate_key(keysym, 0, 0);

  if (tr.scancode == 0)
   return;

  ensure_remote_modifiers(ev_time, tr);

  rdp_send_scancode(ev_time, RDP_KEYPRESS, tr.scancode);
 }
 else
 {

  if (handle_special_keys(keysym, 0, ev_time, False))
   return;


  tr = xkeymap_translate_key(keysym, 0, 0);

  if (tr.scancode == 0)
   return;

  rdp_send_scancode(ev_time, RDP_KEYRELEASE, tr.scancode);
 }
}

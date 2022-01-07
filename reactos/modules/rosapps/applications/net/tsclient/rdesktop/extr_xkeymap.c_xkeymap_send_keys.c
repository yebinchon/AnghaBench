
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ uint32 ;
struct TYPE_4__ {scalar_t__ seq_keysym; scalar_t__ scancode; struct TYPE_4__* next; } ;
typedef TYPE_1__ key_translation ;
typedef int RDPCLIENT ;
typedef scalar_t__ BOOL ;


 int DEBUG_KBD (char*) ;
 scalar_t__ False ;
 int RDP_KEYPRESS ;
 int RDP_KEYRELEASE ;
 scalar_t__ True ;
 int ensure_remote_modifiers (int *,scalar_t__,TYPE_1__) ;
 int error (char*) ;
 int rdp_send_scancode (int *,scalar_t__,int ,scalar_t__) ;
 int restore_remote_modifiers (int *,scalar_t__,scalar_t__) ;
 int save_remote_modifiers (int *,scalar_t__) ;
 TYPE_1__ xkeymap_translate_key (int *,scalar_t__,unsigned int,unsigned int) ;

void
xkeymap_send_keys(RDPCLIENT * This, uint32 keysym, unsigned int keycode, unsigned int state, uint32 ev_time,
    BOOL pressed, uint8 nesting)
{
 key_translation tr, *ptr;
 tr = xkeymap_translate_key(This, keysym, keycode, state);

 if (tr.seq_keysym == 0)
 {

  if (tr.scancode == 0)
   return;

  if (pressed)
  {
   save_remote_modifiers(This, tr.scancode);
   ensure_remote_modifiers(This, ev_time, tr);
   rdp_send_scancode(This, ev_time, RDP_KEYPRESS, tr.scancode);
   restore_remote_modifiers(This, ev_time, tr.scancode);
  }
  else
  {
   rdp_send_scancode(This, ev_time, RDP_KEYRELEASE, tr.scancode);
  }
  return;
 }


 if (pressed)
 {
  ptr = &tr;
  do
  {
   DEBUG_KBD(("Handling sequence element, keysym=0x%x\n",
       (unsigned int) ptr->seq_keysym));

   if (nesting++ > 32)
   {
    error("Sequence nesting too deep\n");
    return;
   }

   xkeymap_send_keys(This, ptr->seq_keysym, keycode, state, ev_time, True, nesting);
   xkeymap_send_keys(This, ptr->seq_keysym, keycode, state, ev_time, False, nesting);
   ptr = ptr->next;
  }
  while (ptr);
 }
}

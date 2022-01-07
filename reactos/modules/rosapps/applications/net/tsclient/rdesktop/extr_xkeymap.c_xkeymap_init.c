
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int min_keycode; int keymap_loaded; } ;
struct TYPE_6__ {TYPE_1__ xkeymap; int display; int keymapname; } ;
typedef TYPE_2__ RDPCLIENT ;


 int True ;
 int XDisplayKeycodes (int ,int *,int*) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ xkeymap_read (TYPE_2__*,int ) ;

void
xkeymap_init(RDPCLIENT * This)
{
 unsigned int max_keycode;

 if (strcmp(This->keymapname, "none"))
 {
  if (xkeymap_read(This, This->keymapname))
   This->xkeymap.keymap_loaded = True;
 }

 XDisplayKeycodes(This->display, &This->xkeymap.min_keycode, (int *) &max_keycode);
}

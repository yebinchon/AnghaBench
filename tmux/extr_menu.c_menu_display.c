
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u_int ;
struct menu_data {int flags; int choice; void* data; int cb; struct menu* menu; void* py; void* px; int s; int fs; struct cmdq_item* item; } ;
struct menu {scalar_t__ width; scalar_t__ count; } ;
struct cmdq_item {int dummy; } ;
struct cmd_find_state {int dummy; } ;
struct TYPE_2__ {scalar_t__ sx; scalar_t__ sy; } ;
struct client {TYPE_1__ tty; } ;
typedef int menu_choice_cb ;


 int cmd_find_copy_state (int *,struct cmd_find_state*) ;
 int menu_draw_cb ;
 int menu_free_cb ;
 int menu_key_cb ;
 int screen_init (int *,scalar_t__,scalar_t__,int ) ;
 int server_client_set_overlay (struct client*,int ,int ,int ,int ,struct menu_data*) ;
 struct menu_data* xcalloc (int,int) ;

int
menu_display(struct menu *menu, int flags, struct cmdq_item *item, u_int px,
    u_int py, struct client *c, struct cmd_find_state *fs, menu_choice_cb cb,
    void *data)
{
 struct menu_data *md;

 if (c->tty.sx < menu->width + 4 || c->tty.sy < menu->count + 2)
  return (-1);

 md = xcalloc(1, sizeof *md);
 md->item = item;
 md->flags = flags;

 if (fs != ((void*)0))
  cmd_find_copy_state(&md->fs, fs);
 screen_init(&md->s, menu->width + 4, menu->count + 2, 0);

 md->px = px;
 md->py = py;

 md->menu = menu;
 md->choice = -1;

 md->cb = cb;
 md->data = data;

 server_client_set_overlay(c, 0, menu_draw_cb, menu_key_cb, menu_free_cb,
     md);
 return (0);
}

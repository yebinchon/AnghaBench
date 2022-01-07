
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct mouse_event {scalar_t__ x; int y; int b; } ;
struct menu_item {char* name; scalar_t__ key; int command; } ;
struct menu_data {int choice; int flags; scalar_t__ px; int py; int fs; TYPE_2__* item; int (* cb ) (struct menu*,size_t,scalar_t__,int ) ;int data; struct menu* menu; } ;
struct menu {int count; scalar_t__ width; struct menu_item* items; } ;
struct key_event {scalar_t__ key; struct mouse_event m; } ;
struct cmdq_item {int dummy; } ;
struct cmd_parse_result {int status; int cmdlist; int error; } ;
struct client {int flags; struct menu_data* overlay_data; } ;
struct TYPE_4__ {TYPE_1__* shared; } ;
struct TYPE_3__ {struct mouse_event mouse; } ;


 int CLIENT_REDRAWOVERLAY ;




 scalar_t__ KEYC_IS_MOUSE (scalar_t__) ;

 int MENU_NOMOUSE ;
 scalar_t__ MOUSE_BUTTONS (int ) ;
 scalar_t__ MOUSE_RELEASE (int ) ;
 int cmd_list_free (int ) ;
 struct cmd_parse_result* cmd_parse_from_string (int ,int *) ;
 int cmdq_append (struct client*,struct cmdq_item*) ;
 struct cmdq_item* cmdq_get_command (int ,int *,struct mouse_event*,int ) ;
 struct cmdq_item* cmdq_get_error (int ) ;
 int free (int ) ;
 int stub1 (struct menu*,size_t,scalar_t__,int ) ;

__attribute__((used)) static int
menu_key_cb(struct client *c, struct key_event *event)
{
 struct menu_data *md = c->overlay_data;
 struct menu *menu = md->menu;
 struct mouse_event *m = &event->m;
 u_int i;
 int count = menu->count, old = md->choice;
 const struct menu_item *item;
 struct cmdq_item *new_item;
 struct cmd_parse_result *pr;
 const char *name;

 if (KEYC_IS_MOUSE(event->key)) {
  if (md->flags & MENU_NOMOUSE) {
   if (MOUSE_BUTTONS(m->b) != 0)
    return (1);
   return (0);
  }
  if (m->x < md->px ||
      m->x > md->px + 4 + menu->width ||
      m->y < md->py + 1 ||
      m->y > md->py + 1 + count - 1) {
   if (MOUSE_RELEASE(m->b))
    return (1);
   if (md->choice != -1) {
    md->choice = -1;
    c->flags |= CLIENT_REDRAWOVERLAY;
   }
   return (0);
  }
  if (MOUSE_RELEASE(m->b))
   goto chosen;
  md->choice = m->y - (md->py + 1);
  if (md->choice != old)
   c->flags |= CLIENT_REDRAWOVERLAY;
  return (0);
 }
 for (i = 0; i < (u_int)count; i++) {
  name = menu->items[i].name;
  if (name == ((void*)0) || *name == '-')
   continue;
  if (event->key == menu->items[i].key) {
   md->choice = i;
   goto chosen;
  }
 }
 switch (event->key) {
 case 128:
 case 'k':
  if (old == -1)
   old = 0;
  do {
   if (md->choice == -1 || md->choice == 0)
    md->choice = count - 1;
   else
    md->choice--;
   name = menu->items[md->choice].name;
  } while ((name == ((void*)0) || *name == '-') && md->choice != old);
  c->flags |= CLIENT_REDRAWOVERLAY;
  return (0);
 case 129:
 case 'j':
  if (old == -1)
   old = 0;
  do {
   if (md->choice == -1 || md->choice == count - 1)
    md->choice = 0;
   else
    md->choice++;
   name = menu->items[md->choice].name;
  } while ((name == ((void*)0) || *name == '-') && md->choice != old);
  c->flags |= CLIENT_REDRAWOVERLAY;
  return (0);
 case '\r':
  goto chosen;
 case '\033':
 case '\003':
 case '\007':
 case 'q':
  return (1);
 }
 return (0);

chosen:
 if (md->choice == -1)
  return (1);
 item = &menu->items[md->choice];
 if (item->name == ((void*)0) || *item->name == '-')
  return (1);
 if (md->cb != ((void*)0)) {
     md->cb(md->menu, md->choice, item->key, md->data);
     md->cb = ((void*)0);
     return (1);
 }

 pr = cmd_parse_from_string(item->command, ((void*)0));
 switch (pr->status) {
 case 132:
  new_item = ((void*)0);
  break;
 case 131:
  new_item = cmdq_get_error(pr->error);
  free(pr->error);
  cmdq_append(c, new_item);
  break;
 case 130:
  if (md->item != ((void*)0))
   m = &md->item->shared->mouse;
  else
   m = ((void*)0);
  new_item = cmdq_get_command(pr->cmdlist, &md->fs, m, 0);
  cmd_list_free(pr->cmdlist);
  cmdq_append(c, new_item);
  break;
 }
 return (1);
}

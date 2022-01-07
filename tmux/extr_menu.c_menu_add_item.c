
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct menu_item {char* name; char* command; int key; } ;
struct menu {scalar_t__ count; scalar_t__ width; struct menu_item* items; } ;
struct cmdq_item {int dummy; } ;
struct cmd_find_state {int * wp; int * wl; int * s; } ;
struct client {int dummy; } ;


 int KEYC_NONE ;
 int KEYC_UNKNOWN ;
 char* format_single (struct cmdq_item*,char const*,struct client*,int *,int *,int *) ;
 scalar_t__ format_width (char*) ;
 int free (char*) ;
 char* key_string_lookup_key (int ) ;
 int memset (struct menu_item*,int ,int) ;
 int xasprintf (char**,char*,char*,...) ;
 struct menu_item* xreallocarray (struct menu_item*,scalar_t__,int) ;

void
menu_add_item(struct menu *menu, const struct menu_item *item,
    struct cmdq_item *qitem, struct client *c, struct cmd_find_state *fs)
{
 struct menu_item *new_item;
 const char *key, *cmd;
 char *s, *name;
 u_int width;
 int line;

 line = (item == ((void*)0) || item->name == ((void*)0) || *item->name == '\0');
 if (line && menu->count == 0)
  return;

 menu->items = xreallocarray(menu->items, menu->count + 1,
     sizeof *menu->items);
 new_item = &menu->items[menu->count++];
 memset(new_item, 0, sizeof *new_item);

 if (line)
  return;

 if (fs != ((void*)0))
  s = format_single(qitem, item->name, c, fs->s, fs->wl, fs->wp);
 else
  s = format_single(qitem, item->name, c, ((void*)0), ((void*)0), ((void*)0));
 if (*s == '\0') {
  menu->count--;
  return;
 }
 if (*s != '-' && item->key != KEYC_UNKNOWN && item->key != KEYC_NONE) {
  key = key_string_lookup_key(item->key);
  xasprintf(&name, "%s#[default] #[align=right](%s)", s, key);
 } else
  xasprintf(&name, "%s", s);
 new_item->name = name;
 free(s);

 cmd = item->command;
 if (cmd != ((void*)0)) {
  if (fs != ((void*)0))
   s = format_single(qitem, cmd, c, fs->s, fs->wl, fs->wp);
  else
   s = format_single(qitem, cmd, c, ((void*)0), ((void*)0), ((void*)0));
 } else
  s = ((void*)0);
 new_item->command = s;
 new_item->key = item->key;

 width = format_width(new_item->name);
 if (width > menu->width)
  menu->width = width;
}

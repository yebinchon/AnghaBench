
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct mode_tree_menu {int line; int itemdata; struct client* c; struct mode_tree_data* data; } ;
struct mode_tree_item {int itemdata; int name; } ;
struct mode_tree_data {int offset; int line_size; int current; int references; struct menu_item* menu; TYPE_1__* line_list; } ;
struct menu_item {int dummy; } ;
struct menu {int dummy; } ;
struct client {int dummy; } ;
struct TYPE_2__ {struct mode_tree_item* item; } ;


 int free (char*) ;
 int menu_add_items (struct menu*,struct menu_item const*,int *,int *,int *) ;
 struct menu* menu_create (char*) ;
 scalar_t__ menu_display (struct menu*,int ,int *,int,int,struct client*,int *,int ,struct mode_tree_menu*) ;
 int menu_free (struct menu*) ;
 int mode_tree_menu_callback ;
 struct menu_item* mode_tree_menu_items ;
 int xasprintf (char**,char*,int ) ;
 struct mode_tree_menu* xmalloc (int) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
mode_tree_display_menu(struct mode_tree_data *mtd, struct client *c, u_int x,
    u_int y, int outside)
{
 struct mode_tree_item *mti;
 struct menu *menu;
 const struct menu_item *items;
 struct mode_tree_menu *mtm;
 char *title;
 u_int line;

 if (mtd->offset + y > mtd->line_size - 1)
  line = mtd->current;
 else
  line = mtd->offset + y;
 mti = mtd->line_list[line].item;

 if (!outside) {
  items = mtd->menu;
  xasprintf(&title, "#[align=centre]%s", mti->name);
 } else {
  items = mode_tree_menu_items;
  title = xstrdup("");
 }
 menu = menu_create(title);
 menu_add_items(menu, items, ((void*)0), ((void*)0), ((void*)0));
 free(title);

 mtm = xmalloc(sizeof *mtm);
 mtm->data = mtd;
 mtm->c = c;
 mtm->line = line;
 mtm->itemdata = mti->itemdata;
 mtd->references++;

 if (menu_display(menu, 0, ((void*)0), x, y, c, ((void*)0), mode_tree_menu_callback,
     mtm) != 0)
  menu_free(menu);
}

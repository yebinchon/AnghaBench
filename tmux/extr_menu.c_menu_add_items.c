
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu_item {int * name; } ;
struct menu {int dummy; } ;
struct cmdq_item {int dummy; } ;
struct cmd_find_state {int dummy; } ;
struct client {int dummy; } ;


 int menu_add_item (struct menu*,struct menu_item const*,struct cmdq_item*,struct client*,struct cmd_find_state*) ;

void
menu_add_items(struct menu *menu, const struct menu_item *items,
    struct cmdq_item *qitem, struct client *c, struct cmd_find_state *fs)
{
 const struct menu_item *loop;

 for (loop = items; loop->name != ((void*)0); loop++)
  menu_add_item(menu, loop, qitem, c, fs);
}

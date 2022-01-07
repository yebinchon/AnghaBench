
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct mode_tree_item {int itemdata; scalar_t__ tagged; } ;
struct mode_tree_data {size_t line_size; size_t current; int modedata; TYPE_1__* line_list; } ;
struct client {int dummy; } ;
typedef int (* mode_tree_each_cb ) (int ,int ,struct client*,int ) ;
typedef int key_code ;
struct TYPE_2__ {struct mode_tree_item* item; } ;



void
mode_tree_each_tagged(struct mode_tree_data *mtd, mode_tree_each_cb cb,
    struct client *c, key_code key, int current)
{
 struct mode_tree_item *mti;
 u_int i;
 int fired;

 fired = 0;
 for (i = 0; i < mtd->line_size; i++) {
  mti = mtd->line_list[i].item;
  if (mti->tagged) {
   fired = 1;
   cb(mtd->modedata, mti->itemdata, c, key);
  }
 }
 if (!fired && current) {
  mti = mtd->line_list[mtd->current].item;
  cb(mtd->modedata, mti->itemdata, c, key);
 }
}

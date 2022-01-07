
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct mode_tree_item {scalar_t__ tagged; } ;
struct mode_tree_data {size_t line_size; TYPE_1__* line_list; } ;
struct TYPE_2__ {struct mode_tree_item* item; } ;



u_int
mode_tree_count_tagged(struct mode_tree_data *mtd)
{
 struct mode_tree_item *mti;
 u_int i, tagged;

 tagged = 0;
 for (i = 0; i < mtd->line_size; i++) {
  mti = mtd->line_list[i].item;
  if (mti->tagged)
   tagged++;
 }
 return (tagged);
}

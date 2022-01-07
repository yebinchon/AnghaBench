
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list {int dummy; } ;


 int ui_tree_begin (struct list*,int,int,int,int ) ;

void ui_list_begin(struct list *list, int count, int req_w, int req_h)
{
 ui_tree_begin(list, count, req_w, req_h, 0);
}

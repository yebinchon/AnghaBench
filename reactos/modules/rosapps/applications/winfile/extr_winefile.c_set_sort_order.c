
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sortOrder; } ;
typedef scalar_t__ SORT_ORDER ;
typedef TYPE_1__ ChildWnd ;


 int refresh_child (TYPE_1__*) ;

__attribute__((used)) static void set_sort_order(ChildWnd* child, SORT_ORDER sortOrder)
{
 if (child->sortOrder != sortOrder) {
  child->sortOrder = sortOrder;
  refresh_child(child);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; struct TYPE_3__* up; struct TYPE_3__* down; } ;
typedef TYPE_1__ fz_html_box ;



__attribute__((used)) static void
fix_nexts(fz_html_box *box)
{
 while (box)
 {
  if (box->down)
   fix_nexts(box->down);
  if (box->next && box->next->up == box)
  {
   box->next = ((void*)0);
   break;
  }
  box = box->next;
 }
}

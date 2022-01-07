
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; struct TYPE_4__* next; struct TYPE_4__* down; struct TYPE_4__* up; } ;
typedef TYPE_1__ fz_html_box ;
typedef int fz_context ;



__attribute__((used)) static void insert_box(fz_context *ctx, fz_html_box *box, int type, fz_html_box *top)
{
 box->type = type;

 box->up = top;

 if (top)
 {


  if (!top->next)
  {
   top->down = top->next = box;
  }
  else
  {
   top->next->next = box;

   top->next = box;
  }
 }
}

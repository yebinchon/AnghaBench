
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char type; struct TYPE_3__* next; } ;
typedef TYPE_1__ fz_css_condition ;



__attribute__((used)) static int
count_condition_names(fz_css_condition *cond)
{
 int n = 0;
 while (cond)
 {
  if (cond->type == ':')
   n ++;
  cond = cond->next;
 }
 return n;
}

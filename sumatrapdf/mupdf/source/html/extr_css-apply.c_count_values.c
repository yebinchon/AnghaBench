
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef TYPE_1__ fz_css_value ;



__attribute__((used)) static int
count_values(fz_css_value *value)
{
 int n = 0;
 while (value)
 {
  n++;
  value = value->next;
 }
 return n;
}

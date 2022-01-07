
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options_array_item {scalar_t__ index; } ;



__attribute__((used)) static int
options_array_cmp(struct options_array_item *a1, struct options_array_item *a2)
{
 if (a1->index < a2->index)
  return (-1);
 if (a1->index > a2->index)
  return (1);
 return (0);
}

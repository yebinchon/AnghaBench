
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winlinks {int dummy; } ;


 int INT_MAX ;
 int * winlink_find_by_index (struct winlinks*,int) ;

__attribute__((used)) static int
winlink_next_index(struct winlinks *wwl, int idx)
{
 int i;

 i = idx;
 do {
  if (winlink_find_by_index(wwl, i) == ((void*)0))
   return (i);
  if (i == INT_MAX)
   i = 0;
  else
   i++;
 } while (i != idx);
 return (-1);
}

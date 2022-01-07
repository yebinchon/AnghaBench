
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winlinks {int dummy; } ;
struct winlink {int idx; } ;


 int RB_INSERT (int ,struct winlinks*,struct winlink*) ;
 int * winlink_find_by_index (struct winlinks*,int) ;
 int winlink_next_index (struct winlinks*,int) ;
 int winlinks ;
 struct winlink* xcalloc (int,int) ;

struct winlink *
winlink_add(struct winlinks *wwl, int idx)
{
 struct winlink *wl;

 if (idx < 0) {
  if ((idx = winlink_next_index(wwl, -idx - 1)) == -1)
   return (((void*)0));
 } else if (winlink_find_by_index(wwl, idx) != ((void*)0))
  return (((void*)0));

 wl = xcalloc(1, sizeof *wl);
 wl->idx = idx;
 RB_INSERT(winlinks, wwl, wl);

 return (wl);
}

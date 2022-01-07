
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winlinks {int dummy; } ;
struct winlink {int idx; } ;


 struct winlink* RB_FIND (int ,struct winlinks*,struct winlink*) ;
 int fatalx (char*) ;
 int winlinks ;

struct winlink *
winlink_find_by_index(struct winlinks *wwl, int idx)
{
 struct winlink wl;

 if (idx < 0)
  fatalx("bad index");

 wl.idx = idx;
 return (RB_FIND(winlinks, wwl, &wl));
}

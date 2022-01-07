
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winlink {int dummy; } ;


 struct winlink* RB_NEXT (int ,int ,struct winlink*) ;
 int winlinks ;
 int wwl ;

struct winlink *
winlink_next(struct winlink *wl)
{
 return (RB_NEXT(winlinks, wwl, wl));
}

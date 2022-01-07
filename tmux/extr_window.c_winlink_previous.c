
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winlink {int dummy; } ;


 struct winlink* RB_PREV (int ,int ,struct winlink*) ;
 int winlinks ;
 int wwl ;

struct winlink *
winlink_previous(struct winlink *wl)
{
 return (RB_PREV(winlinks, wwl, wl));
}

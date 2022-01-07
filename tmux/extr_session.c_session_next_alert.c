
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winlink {int flags; } ;


 int WINLINK_ALERTFLAGS ;
 struct winlink* winlink_next (struct winlink*) ;

__attribute__((used)) static struct winlink *
session_next_alert(struct winlink *wl)
{
 while (wl != ((void*)0)) {
  if (wl->flags & WINLINK_ALERTFLAGS)
   break;
  wl = winlink_next(wl);
 }
 return (wl);
}

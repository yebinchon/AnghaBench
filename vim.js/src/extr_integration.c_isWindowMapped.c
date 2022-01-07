
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ map_state; } ;
typedef TYPE_1__ XWindowAttributes ;
typedef int Window ;
typedef int Display ;
typedef int Boolean ;


 int False ;
 scalar_t__ IsViewable ;
 int True ;
 int XGetWindowAttributes (int *,int ,TYPE_1__*) ;

__attribute__((used)) static Boolean
isWindowMapped(Display *display, Window win)
{
 XWindowAttributes winAttrs;
 XGetWindowAttributes(display,
        win,
        &winAttrs);
 if (winAttrs.map_state == IsViewable) {
  return(True);
 } else {
  return(False);
 }
}

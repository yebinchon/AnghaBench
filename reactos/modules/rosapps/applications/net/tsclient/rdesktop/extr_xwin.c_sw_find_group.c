
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* group; struct TYPE_9__* next; } ;
typedef TYPE_2__ seamless_window ;
struct TYPE_10__ {unsigned long id; scalar_t__ refcnt; int wnd; } ;
typedef TYPE_3__ seamless_group ;
typedef int XSetWindowAttributes ;
struct TYPE_8__ {int screen; TYPE_2__* seamless_windows; } ;
struct TYPE_11__ {TYPE_1__ xwin; int display; } ;
typedef TYPE_4__ RDPCLIENT ;
typedef scalar_t__ BOOL ;


 int CopyFromParent ;
 int RootWindowOfScreen (int ) ;
 int XCreateWindow (int ,int ,int,int,int,int,int ,int ,int ,int ,int ,int *) ;
 TYPE_3__* xmalloc (int) ;

__attribute__((used)) static seamless_group *
sw_find_group(RDPCLIENT * This, unsigned long id, BOOL dont_create)
{
 seamless_window *sw;
 seamless_group *sg;
 XSetWindowAttributes attribs;

 for (sw = This->xwin.seamless_windows; sw; sw = sw->next)
 {
  if (sw->group->id == id)
   return sw->group;
 }

 if (dont_create)
  return ((void*)0);

 sg = xmalloc(sizeof(seamless_group));

 sg->wnd =
  XCreateWindow(This->display, RootWindowOfScreen(This->xwin.screen), -1, -1, 1, 1, 0,
         CopyFromParent, CopyFromParent, CopyFromParent, 0, &attribs);

 sg->id = id;
 sg->refcnt = 0;

 return sg;
}

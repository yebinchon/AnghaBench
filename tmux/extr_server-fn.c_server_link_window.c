
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winlink {int idx; int window; int flags; } ;
struct session_group {int dummy; } ;
struct session {int options; struct winlink* curw; int windows; int lastw; } ;


 int WINLINK_ALERTFLAGS ;
 int notify_session_window (char*,struct session*,int ) ;
 int options_get_number (int ,char*) ;
 int server_redraw_session_group (struct session*) ;
 struct winlink* session_attach (struct session*,int ,int,char**) ;
 struct session_group* session_group_contains (struct session*) ;
 int session_select (struct session*,int ) ;
 struct winlink* winlink_find_by_index (int *,int) ;
 int winlink_remove (int *,struct winlink*) ;
 int winlink_stack_remove (int *,struct winlink*) ;
 int xasprintf (char**,char*,...) ;

int
server_link_window(struct session *src, struct winlink *srcwl,
    struct session *dst, int dstidx, int killflag, int selectflag,
    char **cause)
{
 struct winlink *dstwl;
 struct session_group *srcsg, *dstsg;

 srcsg = session_group_contains(src);
 dstsg = session_group_contains(dst);
 if (src != dst && srcsg != ((void*)0) && dstsg != ((void*)0) && srcsg == dstsg) {
  xasprintf(cause, "sessions are grouped");
  return (-1);
 }

 dstwl = ((void*)0);
 if (dstidx != -1)
  dstwl = winlink_find_by_index(&dst->windows, dstidx);
 if (dstwl != ((void*)0)) {
  if (dstwl->window == srcwl->window) {
   xasprintf(cause, "same index: %d", dstidx);
   return (-1);
  }
  if (killflag) {




   notify_session_window("window-unlinked", dst,
       dstwl->window);
   dstwl->flags &= ~WINLINK_ALERTFLAGS;
   winlink_stack_remove(&dst->lastw, dstwl);
   winlink_remove(&dst->windows, dstwl);


   if (dstwl == dst->curw) {
    selectflag = 1;
    dst->curw = ((void*)0);
   }
  }
 }

 if (dstidx == -1)
  dstidx = -1 - options_get_number(dst->options, "base-index");
 dstwl = session_attach(dst, srcwl->window, dstidx, cause);
 if (dstwl == ((void*)0))
  return (-1);

 if (selectflag)
  session_select(dst, dstwl->idx);
 server_redraw_session_group(dst);

 return (0);
}

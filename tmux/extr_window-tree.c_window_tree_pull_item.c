
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct winlink {TYPE_1__* window; } ;
struct window_tree_itemdata {scalar_t__ type; int pane; int winlink; int session; } ;
struct window_pane {int dummy; } ;
struct session {int windows; struct winlink* curw; } ;
struct TYPE_2__ {struct window_pane* active; } ;


 scalar_t__ WINDOW_TREE_SESSION ;
 scalar_t__ WINDOW_TREE_WINDOW ;
 struct session* session_find_by_id (int ) ;
 int window_has_pane (TYPE_1__*,struct window_pane*) ;
 struct window_pane* window_pane_find_by_id (int ) ;
 struct winlink* winlink_find_by_index (int *,int ) ;

__attribute__((used)) static void
window_tree_pull_item(struct window_tree_itemdata *item, struct session **sp,
    struct winlink **wlp, struct window_pane **wp)
{
 *wp = ((void*)0);
 *wlp = ((void*)0);
 *sp = session_find_by_id(item->session);
 if (*sp == ((void*)0))
  return;
 if (item->type == WINDOW_TREE_SESSION) {
  *wlp = (*sp)->curw;
  *wp = (*wlp)->window->active;
  return;
 }

 *wlp = winlink_find_by_index(&(*sp)->windows, item->winlink);
 if (*wlp == ((void*)0)) {
  *sp = ((void*)0);
  return;
 }
 if (item->type == WINDOW_TREE_WINDOW) {
  *wp = (*wlp)->window->active;
  return;
 }

 *wp = window_pane_find_by_id(item->pane);
 if (!window_has_pane((*wlp)->window, *wp))
  *wp = ((void*)0);
 if (*wp == ((void*)0)) {
  *sp = ((void*)0);
  *wlp = ((void*)0);
  return;
 }
}

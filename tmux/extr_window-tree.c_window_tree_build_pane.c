
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int ;
struct winlink {int idx; } ;
struct window_tree_modedata {int data; int format; } ;
struct window_tree_itemdata {int pane; int winlink; int session; int type; } ;
struct window_pane {int id; } ;
struct session {int id; } ;
struct mode_tree_item {int dummy; } ;


 int WINDOW_TREE_PANE ;
 char* format_single (int *,int ,int *,struct session*,struct winlink*,struct window_pane*) ;
 int free (char*) ;
 int mode_tree_add (int ,struct mode_tree_item*,struct window_tree_itemdata*,int ,char*,char*,int) ;
 int window_pane_index (struct window_pane*,int *) ;
 struct window_tree_itemdata* window_tree_add_item (struct window_tree_modedata*) ;
 int xasprintf (char**,char*,int ) ;

__attribute__((used)) static void
window_tree_build_pane(struct session *s, struct winlink *wl,
    struct window_pane *wp, void *modedata, struct mode_tree_item *parent)
{
 struct window_tree_modedata *data = modedata;
 struct window_tree_itemdata *item;
 char *name, *text;
 u_int idx;

 window_pane_index(wp, &idx);

 item = window_tree_add_item(data);
 item->type = WINDOW_TREE_PANE;
 item->session = s->id;
 item->winlink = wl->idx;
 item->pane = wp->id;

 text = format_single(((void*)0), data->format, ((void*)0), s, wl, wp);
 xasprintf(&name, "%u", idx);

 mode_tree_add(data->data, parent, item, (uint64_t)wp, name, text, -1);
 free(text);
 free(name);
}

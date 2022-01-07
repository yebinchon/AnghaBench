
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window {int id; int name; int sx; int sy; int flags; int activity_time; } ;
struct format_tree {struct window* w; } ;


 int WINDOW_ZOOMED ;
 int format_add (struct format_tree*,char*,char*,int) ;
 int format_add_cb (struct format_tree*,char*,int ) ;
 int format_add_tv (struct format_tree*,char*,int *) ;
 int format_cb_window_layout ;
 int format_cb_window_visible_layout ;
 int window_count_panes (struct window*) ;

void
format_defaults_window(struct format_tree *ft, struct window *w)
{
 ft->w = w;

 format_add_tv(ft, "window_activity", &w->activity_time);
 format_add(ft, "window_id", "@%u", w->id);
 format_add(ft, "window_name", "%s", w->name);
 format_add(ft, "window_width", "%u", w->sx);
 format_add(ft, "window_height", "%u", w->sy);
 format_add_cb(ft, "window_layout", format_cb_window_layout);
 format_add_cb(ft, "window_visible_layout",
     format_cb_window_visible_layout);
 format_add(ft, "window_panes", "%u", window_count_panes(w));
 format_add(ft, "window_zoomed_flag", "%d",
     !!(w->flags & WINDOW_ZOOMED));
}

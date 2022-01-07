
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window {int * layout_root; int * saved_layout_root; } ;
struct format_tree {struct window* w; } ;
struct format_entry {void* value; } ;


 void* layout_dump (int *) ;

__attribute__((used)) static void
format_cb_window_layout(struct format_tree *ft, struct format_entry *fe)
{
 struct window *w = ft->w;

 if (w == ((void*)0))
  return;

 if (w->saved_layout_root != ((void*)0))
  fe->value = layout_dump(w->saved_layout_root);
 else
  fe->value = layout_dump(w->layout_root);
}

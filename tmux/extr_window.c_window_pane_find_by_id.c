
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct window_pane {int id; } ;


 struct window_pane* RB_FIND (int ,int *,struct window_pane*) ;
 int all_window_panes ;
 int window_pane_tree ;

struct window_pane *
window_pane_find_by_id(u_int id)
{
 struct window_pane wp;

 wp.id = id;
 return (RB_FIND(window_pane_tree, &all_window_panes, &wp));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int window; } ;
struct mode_tree_data {scalar_t__ zoomed; int dead; int filter; int search; int screen; int children; struct window_pane* wp; } ;


 int free (int ) ;
 int mode_tree_clear_lines (struct mode_tree_data*) ;
 int mode_tree_free_items (int *) ;
 int mode_tree_remove_ref (struct mode_tree_data*) ;
 int screen_free (int *) ;
 int server_unzoom_window (int ) ;

void
mode_tree_free(struct mode_tree_data *mtd)
{
 struct window_pane *wp = mtd->wp;

 if (mtd->zoomed == 0)
  server_unzoom_window(wp->window);

 mode_tree_free_items(&mtd->children);
 mode_tree_clear_lines(mtd);
 screen_free(&mtd->screen);

 free(mtd->search);
 free(mtd->filter);

 mtd->dead = 1;
 mode_tree_remove_ref(mtd);
}

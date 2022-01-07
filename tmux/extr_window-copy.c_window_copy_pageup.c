
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int modes; } ;


 int TAILQ_FIRST (int *) ;
 int window_copy_pageup1 (int ,int) ;

void
window_copy_pageup(struct window_pane *wp, int half_page)
{
 window_copy_pageup1(TAILQ_FIRST(&wp->modes), half_page);
}

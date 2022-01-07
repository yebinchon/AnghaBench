
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;


 size_t current_view ;
 struct view** display ;
 int doupdate () ;
 int input_mode ;
 int status_empty ;
 int status_win ;
 int update_view_title (struct view*) ;
 int werase (int ) ;

void
report_clear(void)
{
 struct view *view = display[current_view];

 if (!view)
  return;

 if (!input_mode && !status_empty) {
  werase(status_win);
  doupdate();
 }
 status_empty = 1;
 update_view_title(view);
}

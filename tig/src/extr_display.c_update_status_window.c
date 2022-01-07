
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct view {scalar_t__ has_scrolled; } ;


 int getmaxyx (int ,int,int) ;
 int getyx (int ,int,int) ;
 scalar_t__ input_mode ;
 int mvwprintw (int ,int ,int,char*,char const*) ;
 int status_empty ;
 int status_win ;
 size_t strlen (char const*) ;
 scalar_t__ use_scroll_status_wclear ;
 int vwprintw (int ,char const*,int ) ;
 int wclear (int ) ;
 int wclrtoeol (int ) ;
 int wmove (int ,int,int) ;

__attribute__((used)) static bool
update_status_window(struct view *view, const char *context, const char *msg, va_list args)
{
 if (input_mode)
  return 0;

 if (!status_empty || *msg) {
  wmove(status_win, 0, 0);
  if (view && view->has_scrolled && use_scroll_status_wclear)
   wclear(status_win);
  if (*msg) {
   vwprintw(status_win, msg, args);
   status_empty = 0;
  } else {
   status_empty = 1;
  }
  wclrtoeol(status_win);

  if (context && *context) {
   size_t contextlen = strlen(context);
   int x, y, width, ___;

   getyx(status_win, y, x);
   getmaxyx(status_win, ___, width);
   (void) ___;
   if (contextlen < width - x) {
    mvwprintw(status_win, 0, width - contextlen, "%s", context);
    wmove(status_win, y, x);
   }
  }

  return 1;
 }

 return 0;
}

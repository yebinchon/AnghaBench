
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char chtype ;


 char ACS_VLINE ;
 int LINE_TITLE_BLUR ;
 scalar_t__ display_sep ;
 char get_line_attr (int *,int ) ;
 scalar_t__ opt_line_graphics ;
 int wbkgd (scalar_t__,char) ;
 int wclear (scalar_t__) ;
 int wnoutrefresh (scalar_t__) ;

__attribute__((used)) static void
redraw_display_separator(bool clear)
{
 if (display_sep) {
  chtype separator = opt_line_graphics ? ACS_VLINE : '|';

  if (clear)
   wclear(display_sep);
  wbkgd(display_sep, separator + get_line_attr(((void*)0), LINE_TITLE_BLUR));
  wnoutrefresh(display_sep);
 }
}

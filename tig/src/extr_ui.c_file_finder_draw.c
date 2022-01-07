
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct position {size_t lineno; size_t offset; } ;
struct file_finder_line {scalar_t__ matches; } ;
struct file_finder {int height; scalar_t__ searchlen; int win; int lines; struct file_finder_line** line; struct position pos; } ;


 int LINE_CURSOR ;
 int LINE_DEFAULT ;
 int LINE_TITLE_FOCUS ;
 int file_finder_draw_line (struct file_finder*,struct file_finder_line*) ;
 int get_line_attr (int *,int ) ;
 int wbkgdset (int ,int ) ;
 int wclrtoeol (int ) ;
 int werase (int ) ;
 int wmove (int ,int,int ) ;
 int wprintw (int ,char*,int,int ) ;
 int wrefresh (int ) ;

__attribute__((used)) static void
file_finder_draw(struct file_finder *finder)
{
 struct position *pos = &finder->pos;
 struct file_finder_line *current_line = finder->line[pos->lineno];
 struct file_finder_line **line_pos = &finder->line[pos->offset];
 int column;

 wbkgdset(finder->win, get_line_attr(((void*)0), LINE_DEFAULT));
 werase(finder->win);

 for (column = 0; *line_pos && column < finder->height - 1; line_pos++) {
  struct file_finder_line *line = *line_pos;

  if (finder->searchlen != line->matches)
   continue;

  wmove(finder->win, column++, 0);
  if (line == current_line) {
   wbkgdset(finder->win, get_line_attr(((void*)0), LINE_CURSOR));
  }
  file_finder_draw_line(finder, line);
  if (line == current_line) {
   wclrtoeol(finder->win);
   wbkgdset(finder->win, get_line_attr(((void*)0), LINE_DEFAULT));
  }
 }

 wmove(finder->win, finder->height - 1, 0);
 wbkgdset(finder->win, get_line_attr(((void*)0), LINE_TITLE_FOCUS));
 wprintw(finder->win, "[finder] file %d of %d", pos->lineno + 1, finder->lines);
 wclrtoeol(finder->win);
 wrefresh(finder->win);
}

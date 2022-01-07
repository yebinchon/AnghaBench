
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_finder_line {char* text; } ;
struct file_finder {char** search; int win; } ;


 int A_STANDOUT ;
 char* strstr (char const*,char const*) ;
 int waddnstr (int ,char const*,int) ;
 int waddstr (int ,char const*) ;
 int wattroff (int ,int ) ;
 int wattron (int ,int ) ;

__attribute__((used)) static void
file_finder_draw_line(struct file_finder *finder, struct file_finder_line *line)
{
 const char **search = finder->search;
 const char *text = line->text;
 const char *pos;

 for (; *text && search && *search && (pos = strstr(text, *search)); search++) {
  if (text < pos)
   waddnstr(finder->win, text, pos - text);
  wattron(finder->win, A_STANDOUT);
  waddnstr(finder->win, pos, 1);
  wattroff(finder->win, A_STANDOUT);
  text = pos + 1;
 }

 if (*text)
  waddstr(finder->win, text);
}

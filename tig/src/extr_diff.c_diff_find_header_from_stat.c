
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {struct line* line; } ;
struct line {scalar_t__ type; } ;


 int LINE_DIFF_HEADER ;
 int LINE_DIFF_INDEX ;
 int LINE_DIFF_SIMILARITY ;
 scalar_t__ LINE_DIFF_STAT ;
 scalar_t__ diff_find_stat_entry (struct view*,struct line*,int ) ;
 struct line* find_next_line_by_type (struct view*,struct line*,int ) ;
 scalar_t__ view_has_line (struct view*,struct line*) ;

__attribute__((used)) static struct line *
diff_find_header_from_stat(struct view *view, struct line *line)
{
 if (line->type == LINE_DIFF_STAT) {
  int file_number = 0;

  while (view_has_line(view, line) && line->type == LINE_DIFF_STAT) {
   file_number++;
   line--;
  }

  for (line = view->line; view_has_line(view, line); line++) {
   line = find_next_line_by_type(view, line, LINE_DIFF_HEADER);
   if (!line)
    break;

   if (diff_find_stat_entry(view, line, LINE_DIFF_INDEX)
       || diff_find_stat_entry(view, line, LINE_DIFF_SIMILARITY)) {
    if (file_number == 1) {
     break;
    }
    file_number--;
   }
  }

  return line;
 }

 return ((void*)0);
}

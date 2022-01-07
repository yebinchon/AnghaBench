
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int line; } ;
struct line {scalar_t__ type; } ;
typedef enum request { ____Placeholder_request } request ;


 scalar_t__ LINE_DIFF_STAT ;
 int REQ_NONE ;
 struct line* diff_find_header_from_stat (struct view*,struct line*) ;
 int pager_request (struct view*,int,struct line*) ;
 int report (char*) ;
 int report_clear () ;
 int select_view_line (struct view*,struct line*) ;

enum request
diff_common_enter(struct view *view, enum request request, struct line *line)
{
 if (line->type == LINE_DIFF_STAT) {
  line = diff_find_header_from_stat(view, line);
  if (!line) {
   report("Failed to find file diff");
   return REQ_NONE;
  }

  select_view_line(view, line - view->line);
  report_clear();
  return REQ_NONE;

 } else {
  return pager_request(view, request, line);
 }
}

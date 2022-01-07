
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
struct line {int type; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;


 scalar_t__ view_has_line (struct view*,struct line*) ;

struct line *
find_line_by_type(struct view *view, struct line *line, enum line_type type, int direction)
{
 for (; view_has_line(view, line); line += direction)
  if (line->type == type)
   return line;

 return ((void*)0);
}

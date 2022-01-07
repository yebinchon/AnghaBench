
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
struct line {scalar_t__ wrapped; } ;


 int LINE_DIFF_HEADER ;
 struct line* find_prev_line_by_type (struct view*,struct line*,int ) ;
 int opt_wrap_lines ;

__attribute__((used)) static bool
stage_chunk_is_wrapped(struct view *view, struct line *line)
{
 struct line *pos = find_prev_line_by_type(view, line, LINE_DIFF_HEADER);

 if (!opt_wrap_lines || !pos)
  return 0;

 for (; pos <= line; pos++)
  if (pos->wrapped)
   return 1;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
struct line {int dummy; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;


 int LINE_DIFF_HEADER ;
 struct line* find_next_line_by_type (struct view*,struct line*,int) ;
 struct line* find_prev_line_by_type (struct view*,struct line*,int ) ;

__attribute__((used)) static bool
diff_find_stat_entry(struct view *view, struct line *line, enum line_type type)
{
 struct line *marker = find_next_line_by_type(view, line, type);

 return marker &&
  line == find_prev_line_by_type(view, marker, LINE_DIFF_HEADER);
}

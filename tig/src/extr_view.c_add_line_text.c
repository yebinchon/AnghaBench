
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int lines; } ;
struct line {int dummy; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;


 struct line* add_line_text_at (struct view*,int ,char const*,int,int) ;

struct line *
add_line_text(struct view *view, const char *text, enum line_type type)
{
 return add_line_text_at(view, view->lines, text, type, 1);
}

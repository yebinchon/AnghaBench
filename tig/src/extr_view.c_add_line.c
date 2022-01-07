
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int lines; } ;
struct line {int dummy; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;


 struct line* add_line_at (struct view*,int ,void const*,int,size_t,int) ;

struct line *
add_line(struct view *view, const void *data, enum line_type type, size_t data_size, bool custom)
{
 return add_line_at(view, view->lines, data, type, data_size, custom);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
struct line {void* data; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;


 struct line* add_line (struct view*,int *,int,size_t,int) ;

struct line *
add_line_alloc_(struct view *view, void **ptr, enum line_type type, size_t data_size, bool custom)
{
 struct line *line = add_line(view, ((void*)0), type, data_size, custom);

 if (line)
  *ptr = line->data;
 return line;
}

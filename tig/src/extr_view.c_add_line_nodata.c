
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
struct line {int dummy; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;


 struct line* add_line (struct view*,int *,int,int ,int) ;

struct line *
add_line_nodata(struct view *view, enum line_type type)
{
 return add_line(view, ((void*)0), type, 0, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;


 int draw_textn (struct view*,int,char const*,int) ;

bool
draw_text(struct view *view, enum line_type type, const char *string)
{
 return draw_textn(view, type, string, -1);
}

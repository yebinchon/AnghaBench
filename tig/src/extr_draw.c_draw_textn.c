
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;


 int VIEW_MAX_LEN (struct view*) ;
 int draw_text_expanded (struct view*,int,char const*,int,int ,int) ;

__attribute__((used)) static inline bool
draw_textn(struct view *view, enum line_type type, const char *string, int length)
{
 return draw_text_expanded(view, type, string, length, VIEW_MAX_LEN(view), 0);
}

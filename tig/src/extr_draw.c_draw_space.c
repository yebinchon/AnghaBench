
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
typedef int space ;
typedef enum line_type { ____Placeholder_line_type } line_type ;


 int MIN (int,int) ;
 scalar_t__ VIEW_MAX_LEN (struct view*) ;
 scalar_t__ draw_chars (struct view*,int,char*,int,int,int) ;

__attribute__((used)) static bool
draw_space(struct view *view, enum line_type type, int max, int spaces)
{
 static char space[] = "                    ";

 spaces = MIN(max, spaces);

 while (spaces > 0) {
  int len = MIN(spaces, sizeof(space) - 1);

  if (draw_chars(view, type, space, -1, len, 0))
   return 1;
  spaces -= len;
 }

 return VIEW_MAX_LEN(view) <= 0;
}

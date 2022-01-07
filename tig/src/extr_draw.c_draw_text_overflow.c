
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;


 int LINE_OVERFLOW ;
 int MIN (scalar_t__,int) ;
 scalar_t__ VIEW_MAX_LEN (struct view*) ;
 scalar_t__ draw_text (struct view*,int,char const*) ;
 scalar_t__ draw_text_expanded (struct view*,int,char const*,int,int,int) ;
 size_t utf8_length (char const**,int,int ,int*,int,int*,int,int) ;

__attribute__((used)) static bool
draw_text_overflow(struct view *view, const char *text, enum line_type type,
     int overflow_length, int offset)
{
 bool on = overflow_length > 0;

 if (on) {
  int overflow = overflow_length + offset;
  int max = MIN(VIEW_MAX_LEN(view), overflow);
  const char *tmp = text;
  int text_width = 0;
  int trimmed = 0;
  size_t len = utf8_length(&tmp, -1, 0, &text_width, max, &trimmed, 0, 1);

  if (draw_text_expanded(view, type, text, -1, text_width, max < overflow))
   return 1;

  text += len;
  type = LINE_OVERFLOW;
 }

 if (*text && draw_text(view, type, text))
  return 1;

 return VIEW_MAX_LEN(view) <= 0;
}

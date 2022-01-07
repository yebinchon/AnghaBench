
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int line; } ;
struct line {int dummy; } ;
struct diff_state {int dummy; } ;
struct buffer {int data; } ;


 int LINE_PP_REFS ;
 int append_line_format (struct view*,struct line*,char*,char const*,char const*) ;
 int box_text (struct line*) ;
 struct line* find_next_line_by_type (struct view*,int ,int ) ;
 int strcmp (char*,int ) ;
 char* string_trim (int ) ;

__attribute__((used)) static bool
diff_read_describe(struct view *view, struct buffer *buffer, struct diff_state *state)
{
 struct line *line = find_next_line_by_type(view, view->line, LINE_PP_REFS);

 if (line && buffer) {
  const char *ref = string_trim(buffer->data);
  const char *sep = !strcmp("Refs: ", box_text(line)) ? "" : ", ";

  if (*ref && !append_line_format(view, line, "%s%s", sep, ref))
   return 0;
 }

 return 1;
}

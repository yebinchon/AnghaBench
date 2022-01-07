
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int lines; struct line* line; scalar_t__ width; } ;
struct line {size_t lineno; int wrapped; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;


 struct line* add_line_text_at_ (struct view*,int,char const*,size_t,int,int,int) ;
 int opt_tab_size ;
 size_t string_expanded_length (char const*,size_t,int ,scalar_t__) ;
 size_t strlen (char const*) ;

__attribute__((used)) static struct line *
pager_wrap_line(struct view *view, const char *data, enum line_type type)
{
 size_t first_line = 0;
 bool has_first_line = 0;
 size_t datalen = strlen(data);
 size_t lineno = 0;

 while (datalen > 0 || !has_first_line) {
  bool wrapped = !!first_line;
  size_t linelen = string_expanded_length(data, datalen, opt_tab_size, view->width - !!wrapped);
  struct line *line;

  line = add_line_text_at_(view, view->lines, data, linelen, type, 1, wrapped);
  if (!line)
   break;
  if (!has_first_line) {
   first_line = view->lines - 1;
   has_first_line = 1;
  }

  if (!wrapped)
   lineno = line->lineno;

  line->wrapped = wrapped;
  line->lineno = lineno;

  datalen -= linelen;
  data += linelen;
 }

 return has_first_line ? &view->line[first_line] : ((void*)0);
}

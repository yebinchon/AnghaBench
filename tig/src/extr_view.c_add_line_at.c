
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {unsigned long lines; unsigned long custom_lines; struct line* line; } ;
struct line {unsigned long lineno; int dirty; int type; void* data; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;


 void* calloc (int,size_t) ;
 int memcpy (void*,void const*,size_t) ;
 int memmove (struct line*,struct line*,unsigned long) ;
 int memset (struct line*,int ,int) ;
 int realloc_lines (struct line**,unsigned long,int) ;

struct line *
add_line_at(struct view *view, unsigned long pos, const void *data, enum line_type type, size_t data_size, bool custom)
{
 struct line *line;
 unsigned long lineno;

 if (!realloc_lines(&view->line, view->lines, 1))
  return ((void*)0);

 if (data_size) {
  void *alloc_data = calloc(1, data_size);

  if (!alloc_data)
   return ((void*)0);

  if (data)
   memcpy(alloc_data, data, data_size);
  data = alloc_data;
 }

 if (pos < view->lines) {
  view->lines++;
  line = view->line + pos;
  lineno = line->lineno;

  memmove(line + 1, line, (view->lines - pos) * sizeof(*view->line));
  while (pos < view->lines) {
   view->line[pos].lineno++;
   view->line[pos++].dirty = 1;
  }
 } else {
  line = &view->line[view->lines++];
  lineno = view->lines - view->custom_lines;
 }

 memset(line, 0, sizeof(*line));
 line->type = type;
 line->data = (void *) data;
 line->dirty = 1;

 if (custom)
  view->custom_lines++;
 else
  line->lineno = lineno;

 return line;
}

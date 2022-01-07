
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct view {struct line* line; } ;
struct line {int dummy; } ;
struct TYPE_4__ {unsigned long lines; int position; } ;
struct TYPE_3__ {unsigned long lines; int position; } ;
struct chunk_header {TYPE_2__ new; TYPE_1__ old; } ;


 char* box_text (struct line*) ;
 int parse_chunk_header (struct chunk_header*,char*) ;
 int redraw_view (struct view*) ;
 int report (char*,...) ;
 struct line* stage_insert_chunk (struct view*,struct chunk_header*,struct line*,struct line*,struct line*) ;
 scalar_t__ view_has_line (struct view*,struct line*) ;

__attribute__((used)) static void
stage_split_chunk(struct view *view, struct line *chunk_start)
{
 struct chunk_header header;
 struct line *last_changed_line = ((void*)0), *last_unchanged_line = ((void*)0), *pos;
 int chunks = 0;

 if (!chunk_start || !parse_chunk_header(&header, box_text(chunk_start))) {
  report("Failed to parse chunk header");
  return;
 }

 header.old.lines = header.new.lines = 0;

 for (pos = chunk_start + 1; view_has_line(view, pos); pos++) {
  const char *chunk_line = box_text(pos);

  if (*chunk_line == '@' || *chunk_line == '\\')
   break;

  if (*chunk_line == ' ') {
   header.old.lines++;
   header.new.lines++;
   if (last_unchanged_line < last_changed_line)
    last_unchanged_line = pos;
   continue;
  }

  if (last_changed_line && last_changed_line < last_unchanged_line) {
   unsigned long chunk_start_lineno = pos - view->line;
   unsigned long diff = pos - last_unchanged_line;

   pos = stage_insert_chunk(view, &header, chunk_start, pos, last_unchanged_line);

   header.old.position += header.old.lines - diff;
   header.new.position += header.new.lines - diff;
   header.old.lines = header.new.lines = diff;

   chunk_start = view->line + chunk_start_lineno;
   last_changed_line = last_unchanged_line = ((void*)0);
   chunks++;
  }

  if (*chunk_line == '-') {
   header.old.lines++;
   last_changed_line = pos;
  } else if (*chunk_line == '+') {
   header.new.lines++;
   last_changed_line = pos;
  }
 }

 if (chunks) {
  stage_insert_chunk(view, &header, chunk_start, ((void*)0), ((void*)0));
  redraw_view(view);
  report("Split the chunk in %d", chunks + 1);
 } else {
  report("The chunk cannot be split");
 }
}

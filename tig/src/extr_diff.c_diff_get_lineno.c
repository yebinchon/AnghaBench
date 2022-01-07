
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {int dummy; } ;
typedef struct line {scalar_t__ type; } const line ;
struct TYPE_2__ {unsigned int position; } ;
struct chunk_header {TYPE_1__ new; } ;


 int LINE_DIFF_CHUNK ;
 scalar_t__ LINE_DIFF_DEL ;
 scalar_t__ LINE_DIFF_DEL2 ;
 int LINE_DIFF_HEADER ;
 int box_text (struct line const*) ;
 struct line const* find_prev_line_by_type (struct view*,struct line const*,int ) ;
 int parse_chunk_header (struct chunk_header*,int ) ;

unsigned int
diff_get_lineno(struct view *view, struct line *line)
{
 const struct line *header, *chunk;
 unsigned int lineno;
 struct chunk_header chunk_header;


 header = find_prev_line_by_type(view, line, LINE_DIFF_HEADER);
 chunk = find_prev_line_by_type(view, line, LINE_DIFF_CHUNK);
 if (!header || !chunk || chunk < header)
  return 0;






 if (!parse_chunk_header(&chunk_header, box_text(chunk)))
  return 0;

 lineno = chunk_header.new.position;

 for (chunk++; chunk < line; chunk++)
  if (chunk->type != LINE_DIFF_DEL &&
      chunk->type != LINE_DIFF_DEL2)
   lineno++;

 return lineno;
}

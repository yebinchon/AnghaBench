
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int lines; } ;
struct line {struct box* data; } ;
struct diff_stat_context {int cells; int cell; scalar_t__ cell_text; } ;
struct box_cell {int dummy; } ;
struct box {int cells; int cell; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;


 struct line* add_line_text_at (struct view*,int ,char const*,int,int) ;
 int argv_free (scalar_t__) ;
 char* argv_to_string_alloc (scalar_t__,char*) ;
 int free (char*) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static struct line *
diff_common_add_line(struct view *view, const char *text, enum line_type type, struct diff_stat_context *context)
{
 char *cell_text = context->cell_text ? argv_to_string_alloc(context->cell_text, "") : ((void*)0);
 const char *line_text = cell_text ? cell_text : text;
 struct line *line = add_line_text_at(view, view->lines, line_text, type, context->cells);
 struct box *box;

 free(cell_text);
 argv_free(context->cell_text);

 if (!line)
  return ((void*)0);

 box = line->data;
 if (context->cells)
  memcpy(box->cell, context->cell, sizeof(struct box_cell) * context->cells);
 box->cells = context->cells;
 return line;
}

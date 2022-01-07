
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
struct line {scalar_t__ type; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;


 scalar_t__ LINE_COMMIT ;
 int STRING_SIZE (char*) ;
 int VIEW_ADD_PAGER_REFS ;
 struct line* add_line_text (struct view*,char const*,int) ;
 int add_pager_refs (struct view*,char const*) ;
 scalar_t__ opt_wrap_lines ;
 struct line* pager_wrap_line (struct view*,char const*,int) ;
 scalar_t__ view_has_flags (struct view*,int ) ;

bool
pager_common_read(struct view *view, const char *data, enum line_type type, struct line **line_ptr)
{
 struct line *line;

 if (!data)
  return 1;

 if (opt_wrap_lines) {
  line = pager_wrap_line(view, data, type);
 } else {
  line = add_line_text(view, data, type);
 }

 if (!line)
  return 0;

 if (line_ptr)
  *line_ptr = line;

 if (line->type == LINE_COMMIT && view_has_flags(view, VIEW_ADD_PAGER_REFS))
  add_pager_refs(view, data + STRING_SIZE("commit "));

 return 1;
}

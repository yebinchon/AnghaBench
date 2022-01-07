
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
struct tree_entry {int name; } ;
struct line {scalar_t__ type; struct tree_entry* data; } ;


 scalar_t__ LINE_HEADER ;
 int draw_formatted (struct view*,scalar_t__,char*,int ) ;
 int view_column_draw (struct view*,struct line*,unsigned int) ;

__attribute__((used)) static bool
tree_draw(struct view *view, struct line *line, unsigned int lineno)
{
 struct tree_entry *entry = line->data;

 if (line->type == LINE_HEADER) {
  draw_formatted(view, line->type, "Directory path /%s", entry->name);
  return 1;
 }

 return view_column_draw(view, line, lineno);
}

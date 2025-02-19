
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int ref; } ;
struct line {int dummy; } ;


 char* box_text (struct line*) ;
 size_t get_graph_indent (char const*) ;
 int string_copy_rev_from_commit_line (int ,char const*) ;

__attribute__((used)) static inline void
log_copy_rev(struct view *view, struct line *line)
{
 const char *text = box_text(line);
 size_t offset = get_graph_indent(text);

 string_copy_rev_from_commit_line(view->ref, text + offset);
}

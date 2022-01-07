
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {struct log_state* private; } ;
struct log_state {int graph_indent; int commit_title_read; int after_commit_header; int reading_diff_stat; } ;
struct line {int graph_indent; } ;
struct buffer {char* data; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;


 int LINE_COMMIT ;
 struct line* diff_common_add_diff_stat (struct view*,char*,int) ;
 int get_graph_indent (char*) ;
 int get_line_type (char*) ;
 int pager_common_read (struct view*,char*,int,struct line**) ;
 size_t strlen (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static bool
log_read(struct view *view, struct buffer *buf, bool force_stop)
{
 struct line *line = ((void*)0);
 enum line_type type;
 struct log_state *state = view->private;
 size_t len;
 char *commit;
 char *data;

 if (!buf)
  return 1;

 data = buf->data;
 commit = strstr(data, "commit ");
 if (commit && get_graph_indent(data) == commit - data)
  state->graph_indent = commit - data;

 type = get_line_type(data + state->graph_indent);
 len = strlen(data + state->graph_indent);

 if (type == LINE_COMMIT)
  state->commit_title_read = 1;
 else if (state->commit_title_read && len < 1) {
  state->commit_title_read = 0;
  state->after_commit_header = 1;
 } else if (state->after_commit_header && len < 1) {
  state->after_commit_header = 0;
  state->reading_diff_stat = 1;
 } else if (state->reading_diff_stat) {
  line = diff_common_add_diff_stat(view, data, state->graph_indent);
  if (line) {
   if (state->graph_indent)
    line->graph_indent = 1;
   return 1;
  }
  state->reading_diff_stat = 0;
 }

 if (!pager_common_read(view, data, type, &line))
  return 0;
 if (line && state->graph_indent)
  line->graph_indent = 1;
 return 1;
}

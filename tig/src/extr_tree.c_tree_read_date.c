
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct view {size_t lines; int pipe; struct line* line; TYPE_2__* env; int * ref; TYPE_1__* ops; } ;
struct tree_state {int read_date; int author_time; scalar_t__ author; int commit; } ;
struct tree_entry {int time; scalar_t__ author; int commit; int name; } ;
struct line {int dirty; struct tree_entry* data; } ;
struct buffer {char* data; } ;
struct TYPE_6__ {int exec_dir; } ;
struct TYPE_5__ {char* directory; } ;
struct TYPE_4__ {char* id; } ;


 scalar_t__ LINE_AUTHOR ;
 scalar_t__ LINE_COMMIT ;
 int LINE_DIRECTORY ;
 int LINE_HEADER ;
 int OPEN_EXTRA ;
 int STRING_SIZE (char*) ;
 scalar_t__ SUCCESS ;
 scalar_t__ begin_update (struct view*,int ,char const**,int ) ;
 char* encoding_arg ;
 scalar_t__ get_line_type (char*) ;
 int io_kill (int ) ;
 int parse_author_line (char*,scalar_t__*,int *) ;
 TYPE_3__ repo ;
 int report (char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (int ,char*) ;
 int string_copy_rev (int ,int ) ;
 int string_copy_rev_from_commit_line (int ,char*) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int ) ;
 char* strrchr (char*,char) ;
 int tree_entry (struct view*,int ,char*,char*,int *,int ) ;
 int view_column_info_update (struct view*,struct line*) ;

__attribute__((used)) static bool
tree_read_date(struct view *view, struct buffer *buf, struct tree_state *state)
{
 char *text = buf ? buf->data : ((void*)0);

 if (!text && state->read_date) {
  state->read_date = 0;
  return 1;

 } else if (!text) {

  const char *log_file[] = {
   "git", "log", encoding_arg, "--no-color", "--pretty=raw",
    "--cc", "--raw", view->ops->id, "--", "%(directory)", ((void*)0)
  };

  if (!view->lines) {
   tree_entry(view, LINE_HEADER, view->env->directory, ((void*)0), ((void*)0), 0);
   tree_entry(view, LINE_DIRECTORY, "..", "040000", view->ref, 0);
   report("Tree is empty");
   return 1;
  }

  if (begin_update(view, repo.exec_dir, log_file, OPEN_EXTRA) != SUCCESS) {
   report("Failed to load tree data");
   return 1;
  }

  state->read_date = 1;
  return 0;

 } else if (*text == 'c' && get_line_type(text) == LINE_COMMIT) {
  string_copy_rev_from_commit_line(state->commit, text);

 } else if (*text == 'a' && get_line_type(text) == LINE_AUTHOR) {
  parse_author_line(text + STRING_SIZE("author "),
      &state->author, &state->author_time);

 } else if (*text == ':') {
  char *pos;
  size_t annotated = 1;
  size_t i;

  pos = strrchr(text, '\t');
  if (!pos)
   return 1;
  text = pos + 1;
  if (*view->env->directory && !strncmp(text, view->env->directory, strlen(view->env->directory)))
   text += strlen(view->env->directory);
  pos = strchr(text, '/');
  if (pos)
   *pos = 0;

  for (i = 1; i < view->lines; i++) {
   struct line *line = &view->line[i];
   struct tree_entry *entry = line->data;

   annotated += !!entry->author;
   if (entry->author || strcmp(entry->name, text))
    continue;

   string_copy_rev(entry->commit, state->commit);
   entry->author = state->author;
   entry->time = state->author_time;
   line->dirty = 1;
   view_column_info_update(view, line);
   break;
  }

  if (annotated == view->lines)
   io_kill(view->pipe);
 }
 return 1;
}

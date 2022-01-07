
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {int lines; TYPE_1__* line; struct main_state* private; } ;
struct commit {int * title; int graph; int time; int author; int * id; } ;
struct main_state {int in_header; char* reflogmsg; scalar_t__ with_graph; struct commit current; scalar_t__ first_parent; struct graph* graph; } ;
struct graph {int (* render_parents ) (struct graph*,int *) ;int (* add_parent ) (struct graph*,char*) ;int (* done_rendering ) (struct graph*) ;} ;
struct buffer {char* data; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;
struct TYPE_2__ {int dirty; struct commit* data; } ;



 int LINE_COMMIT ;
 int LINE_MAIN_ANNOTATED ;
 int LINE_MAIN_COMMIT ;



 int STRING_SIZE (char*) ;
 int die (char*) ;
 scalar_t__ failed_to_load_initial_view (struct view*) ;
 int free (struct commit*) ;
 int get_line_type (char*) ;
 char* io_memchr (struct buffer*,char*,int ) ;
 int isalnum (char) ;
 int isspace (char) ;
 int main_add_commit (struct view*,int ,struct commit*,char*,int) ;
 int main_add_reflog (struct view*,struct main_state*,char*) ;
 int main_flush_commit (struct view*,struct commit*) ;
 int main_register_commit (struct view*,struct commit*,char*,int) ;
 int parse_author_line (char*,int *,int *) ;
 char* strchr (char*,char) ;
 int string_ncopy (char*,char*,int ) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;
 int stub1 (struct graph*) ;
 int stub2 (struct graph*,int *) ;
 int stub3 (struct graph*,char*) ;
 int stub4 (struct graph*,int *) ;

bool
main_read(struct view *view, struct buffer *buf, bool force_stop)
{
 struct main_state *state = view->private;
 struct graph *graph = state->graph;
 enum line_type type;
 struct commit *commit = &state->current;
 char *line;

 if (!buf) {
  main_flush_commit(view, commit);

  if (!force_stop && failed_to_load_initial_view(view))
   die("No revisions match the given arguments.");
  if (view->lines > 0) {
   struct commit *last = view->line[view->lines - 1].data;

   view->line[view->lines - 1].dirty = 1;
   if (!last->author) {
    view->lines--;
    free(last);
   }
  }

  if (state->graph)
   state->graph->done_rendering(graph);
  return 1;
 }

 line = buf->data;
 type = get_line_type(line);
 if (type == LINE_COMMIT) {
  bool is_boundary;
  char *author;

  state->in_header = 1;
  line += STRING_SIZE("commit ");
  is_boundary = *line == '-';
  while (*line && !isalnum(*line))
   line++;

  main_flush_commit(view, commit);

  author = io_memchr(buf, line, 0);

  if (state->first_parent) {
   char *parent = strchr(line, ' ');
   char *parent_end = parent ? strchr(parent + 1, ' ') : ((void*)0);

   if (parent_end)
    *parent_end = 0;
  }

  main_register_commit(view, &state->current, line, is_boundary);

  if (author) {
   char *title = io_memchr(buf, author, 0);

   parse_author_line(author, &commit->author, &commit->time);
   if (state->with_graph)
    graph->render_parents(graph, &commit->graph);
   if (title) {
    char *notes = io_memchr(buf, title, 0);

    main_add_commit(view, notes && *notes ? LINE_MAIN_ANNOTATED : LINE_MAIN_COMMIT,
      commit, title, 0);
   }
  }

  return 1;
 }

 if (!*commit->id)
  return 1;


 if (*line == '\0')
  state->in_header = 0;

 switch (type) {
 case 129:
  if (!main_add_reflog(view, state, line + STRING_SIZE("Reflog: ")))
   return 0;
  break;

 case 128:
  line += STRING_SIZE("Reflog message: ");
  string_ncopy(state->reflogmsg, line, strlen(line));
  break;

 case 130:
  if (state->with_graph)
   graph->add_parent(graph, line + STRING_SIZE("parent "));
  break;

 case 131:
  parse_author_line(line + STRING_SIZE("author "),
      &commit->author, &commit->time);
  if (state->with_graph)
   graph->render_parents(graph, &commit->graph);
  break;

 default:

  if (*commit->title)
   break;


  if (state->in_header)
   break;



  if (strncmp(line, "    ", 4))
   break;
  line += 4;


  while (isspace(*line))
   line++;
  if (*line == '\0')
   break;
  if (*state->reflogmsg)
   line = state->reflogmsg;
  main_add_commit(view, LINE_MAIN_COMMIT, commit, line, 0);
 }

 return 1;
}

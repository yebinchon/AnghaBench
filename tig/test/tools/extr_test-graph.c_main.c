
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io {int member_0; } ;
struct graph {int (* render_parents ) (struct graph*,int *) ;int (* add_commit ) (struct graph*,int *,int ,char*,int) ;int symbol_to_utf8; int symbol_to_ascii; } ;
struct commit {int canvas; int id; } ;
struct buffer {char* data; } ;


 int GRAPH_DISPLAY_V2 ;
 int STDIN_FILENO ;
 int STRING_SIZE (char*) ;
 char* USAGE ;
 struct commit* calloc (int,int) ;
 int die (char*) ;
 int graph_fn ;
 struct graph* init_graph (int ) ;
 int io_eof (struct io*) ;
 scalar_t__ io_get (struct io*,struct buffer*,char,int) ;
 char* io_memchr (struct buffer*,char*,int ) ;
 int io_open (struct io*,char*,char*) ;
 scalar_t__ isatty (int ) ;
 int prefixcmp (char*,char*) ;
 int print_commit (struct graph*,struct commit*,char*) ;
 int realloc_commits (struct commit***,size_t,int) ;
 int strcmp (char const*,char*) ;
 int string_copy_rev (int ,char*) ;
 int stub1 (struct graph*,int *,int ,char*,int) ;
 int stub2 (struct graph*,int *) ;

int
main(int argc, const char *argv[])
{
 struct graph *graph;
 struct io io = {0};
 struct buffer buf;
 struct commit **commits = ((void*)0);
 size_t ncommits = 0;
 struct commit *commit = ((void*)0);
 bool is_boundary;

 if (isatty(STDIN_FILENO)) {
  die(USAGE);
 }

 if (!(graph = init_graph(GRAPH_DISPLAY_V2)))
  die("Failed to allocated graph");

 if (argc > 1 && !strcmp(argv[1], "--ascii"))
  graph_fn = graph->symbol_to_ascii;
 else
  graph_fn = graph->symbol_to_utf8;

 if (!io_open(&io, "%s", ""))
  die("IO");

 while (!io_eof(&io)) {
  for (; io_get(&io, &buf, '\n', 1); ) {
   char *line = buf.data;

   if (!prefixcmp(line, "commit ")) {
    line += STRING_SIZE("commit ");
    is_boundary = *line == '-';

    if (is_boundary)
     line++;

    if (!realloc_commits(&commits, ncommits, 1))
     die("Commits");

    commit = calloc(1, sizeof(*commit));
    if (!commit)
     die("Commit");
    commits[ncommits++] = commit;
    string_copy_rev(commit->id, line);
    graph->add_commit(graph, &commit->canvas, commit->id, line, is_boundary);
    graph->render_parents(graph, &commit->canvas);

    if ((line = io_memchr(&buf, line, 0))) {
     print_commit(graph, commit, line);
     commit = ((void*)0);
    }

   } else if (!prefixcmp(line, "    ")) {

    if (!commit)
     continue;

    print_commit(graph, commit, line + 4);

    commit = ((void*)0);
   }
  }
 }

 return 0;
}

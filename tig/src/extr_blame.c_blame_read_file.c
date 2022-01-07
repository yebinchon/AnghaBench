
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct view {scalar_t__ lines; TYPE_1__* env; int vid; } ;
struct buffer {size_t size; int data; } ;
struct blame_state {int done_reading; } ;
struct blame {scalar_t__* text; int * commit; } ;
struct TYPE_4__ {int exec_dir; } ;
struct TYPE_3__ {char* ref; char* file; scalar_t__ goto_lineno; } ;


 int LINE_DEFAULT ;
 int OPEN_EXTRA ;
 scalar_t__ SUCCESS ;
 int add_line_alloc (struct view*,struct blame**,int ,size_t,int) ;
 scalar_t__ begin_update (struct view*,int ,char const**,int ) ;
 int die (char*,int ) ;
 char* encoding_arg ;
 scalar_t__ failed_to_load_initial_view (struct view*) ;
 TYPE_2__ repo ;
 int report (char*) ;
 int select_view_line (struct view*,scalar_t__) ;
 int strncpy (scalar_t__*,int ,size_t) ;

__attribute__((used)) static bool
blame_read_file(struct view *view, struct buffer *buf, struct blame_state *state)
{
 if (!buf) {
  const char *blame_argv[] = {
   "git", "blame", encoding_arg, "%(blameargs)", "--incremental",
    *view->env->ref ? view->env->ref : "--incremental", "--", view->env->file, ((void*)0)
  };

  if (failed_to_load_initial_view(view))
   die("No blame exist for %s", view->vid);

  if (view->lines == 0 || begin_update(view, repo.exec_dir, blame_argv, OPEN_EXTRA) != SUCCESS) {
   report("Failed to load blame data");
   return 1;
  }

  if (view->env->goto_lineno > 0) {
   select_view_line(view, view->env->goto_lineno);
   view->env->goto_lineno = 0;
  }

  state->done_reading = 1;
  return 0;

 } else {
  struct blame *blame;

  if (!add_line_alloc(view, &blame, LINE_DEFAULT, buf->size, 0))
   return 0;

  blame->commit = ((void*)0);
  strncpy(blame->text, buf->data, buf->size);
  blame->text[buf->size] = 0;
  return 1;
 }
}

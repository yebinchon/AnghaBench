
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_tree_modedata {int references; int squash_groups; int type; int data; void* command; void* format; int fs; struct window_pane* wp; } ;
struct window_pane {int dummy; } ;
struct window_mode_entry {struct window_tree_modedata* data; struct window_pane* wp; } ;
struct screen {int dummy; } ;
struct cmd_find_state {int dummy; } ;
struct args {scalar_t__ argc; int * argv; } ;


 int WINDOW_TREE_DEFAULT_COMMAND ;
 int WINDOW_TREE_DEFAULT_FORMAT ;
 int WINDOW_TREE_NONE ;
 int WINDOW_TREE_PANE ;
 int WINDOW_TREE_SESSION ;
 int WINDOW_TREE_WINDOW ;
 int args_get (struct args*,float) ;
 scalar_t__ args_has (struct args*,char) ;
 int memcpy (int *,struct cmd_find_state*,int) ;
 int mode_tree_build (int ) ;
 int mode_tree_draw (int ) ;
 int mode_tree_start (struct window_pane*,struct args*,int ,int ,int ,int ,struct window_tree_modedata*,int ,int ,int ,struct screen**) ;
 int mode_tree_zoom (int ,struct args*) ;
 int nitems (int ) ;
 int window_tree_build ;
 int window_tree_draw ;
 int window_tree_menu ;
 int window_tree_menu_items ;
 int window_tree_search ;
 int window_tree_sort_list ;
 struct window_tree_modedata* xcalloc (int,int) ;
 void* xstrdup (int ) ;

__attribute__((used)) static struct screen *
window_tree_init(struct window_mode_entry *wme, struct cmd_find_state *fs,
    struct args *args)
{
 struct window_pane *wp = wme->wp;
 struct window_tree_modedata *data;
 struct screen *s;

 wme->data = data = xcalloc(1, sizeof *data);
 data->wp = wp;
 data->references = 1;

 if (args_has(args, 's'))
  data->type = WINDOW_TREE_SESSION;
 else if (args_has(args, 'w'))
  data->type = WINDOW_TREE_WINDOW;
 else
  data->type = WINDOW_TREE_PANE;
 memcpy(&data->fs, fs, sizeof data->fs);

 if (args == ((void*)0) || !args_has(args, 'F'))
  data->format = xstrdup(WINDOW_TREE_DEFAULT_FORMAT);
 else
  data->format = xstrdup(args_get(args, 'F'));
 if (args == ((void*)0) || args->argc == 0)
  data->command = xstrdup(WINDOW_TREE_DEFAULT_COMMAND);
 else
  data->command = xstrdup(args->argv[0]);
 data->squash_groups = !args_has(args, 'G');

 data->data = mode_tree_start(wp, args, window_tree_build,
     window_tree_draw, window_tree_search, window_tree_menu, data,
     window_tree_menu_items, window_tree_sort_list,
     nitems(window_tree_sort_list), &s);
 mode_tree_zoom(data->data, args);

 mode_tree_build(data->data);
 mode_tree_draw(data->data);

 data->type = WINDOW_TREE_NONE;

 return (s);
}

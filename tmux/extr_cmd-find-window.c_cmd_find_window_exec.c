
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct window_pane {int dummy; } ;
struct TYPE_2__ {struct window_pane* wp; } ;
struct cmdq_item {TYPE_1__ target; } ;
struct cmd {struct args* args; } ;
struct args {char** argv; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int CMD_RETURN_NORMAL ;
 int args_free (struct args*) ;
 int args_has (struct args*,char) ;
 struct args* args_parse (char*,int,char**) ;
 int args_set (struct args*,float,char*) ;
 int free (char*) ;
 int window_pane_set_mode (struct window_pane*,int *,TYPE_1__*,struct args*) ;
 int window_tree_mode ;
 int xasprintf (char**,char*,char const*,...) ;

__attribute__((used)) static enum cmd_retval
cmd_find_window_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args, *new_args;
 struct window_pane *wp = item->target.wp;
 const char *s = args->argv[0];
 char *filter, *argv = { ((void*)0) };
 int C, N, T;

 C = args_has(args, 'C');
 N = args_has(args, 'N');
 T = args_has(args, 'T');

 if (!C && !N && !T)
  C = N = T = 1;

 if (!args_has(args, 'r')) {
  if (C && N && T) {
   xasprintf(&filter,
       "#{||:"
       "#{C:%s},#{||:#{m:*%s*,#{window_name}},"
       "#{m:*%s*,#{pane_title}}}}",
       s, s, s);
  } else if (C && N) {
   xasprintf(&filter,
       "#{||:#{C:%s},#{m:*%s*,#{window_name}}}",
       s, s);
  } else if (C && T) {
   xasprintf(&filter,
       "#{||:#{C:%s},#{m:*%s*,#{pane_title}}}",
       s, s);
  } else if (N && T) {
   xasprintf(&filter,
       "#{||:#{m:*%s*,#{window_name}},"
       "#{m:*%s*,#{pane_title}}}",
       s, s);
  } else if (C)
   xasprintf(&filter, "#{C:%s}", s);
  else if (N)
   xasprintf(&filter, "#{m:*%s*,#{window_name}}", s);
  else
   xasprintf(&filter, "#{m:*%s*,#{pane_title}}", s);
 } else {
  if (C && N && T) {
   xasprintf(&filter,
       "#{||:"
       "#{C/r:%s},#{||:#{m/r:%s,#{window_name}},"
       "#{m/r:%s,#{pane_title}}}}",
       s, s, s);
  } else if (C && N) {
   xasprintf(&filter,
       "#{||:#{C/r:%s},#{m/r:%s,#{window_name}}}",
       s, s);
  } else if (C && T) {
   xasprintf(&filter,
       "#{||:#{C/r:%s},#{m/r:%s,#{pane_title}}}",
       s, s);
  } else if (N && T) {
   xasprintf(&filter,
       "#{||:#{m/r:%s,#{window_name}},"
       "#{m/r:%s,#{pane_title}}}",
       s, s);
  } else if (C)
   xasprintf(&filter, "#{C/r:%s}", s);
  else if (N)
   xasprintf(&filter, "#{m/r:%s,#{window_name}}", s);
  else
   xasprintf(&filter, "#{m/r:%s,#{pane_title}}", s);
 }

 new_args = args_parse("", 1, &argv);
 if (args_has(args, 'Z'))
  args_set(new_args, 'Z', ((void*)0));
 args_set(new_args, 'f', filter);

 window_pane_set_mode(wp, &window_tree_mode, &item->target, new_args);

 args_free(new_args);
 free(filter);

 return (CMD_RETURN_NORMAL);
}

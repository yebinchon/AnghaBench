
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct view {int watch; int env; } ;
struct TYPE_3__ {scalar_t__ internal; scalar_t__ exit; scalar_t__ confirm; int quick; int echo; int silent; } ;
struct run_request {TYPE_1__ flags; int argv; } ;
typedef enum request { ____Placeholder_request } request ;
typedef int cmd ;
struct TYPE_4__ {int cdup; } ;


 int REQ_NONE ;
 int REQ_QUIT ;
 int REQ_REFRESH ;
 int SIZEOF_ARG ;
 int SIZEOF_MED_STR ;
 int SIZEOF_STR ;
 int argv_format (int ,char const***,char const**,int,int) ;
 int argv_free (char const**) ;
 int argv_from_string_no_quotes (char const**,int*,char*) ;
 int argv_to_string (int ,char*,int,char*) ;
 scalar_t__ argv_to_string_quoted (char const**,char*,int,char*) ;
 int free (char const**) ;
 int open_external_viewer (char const**,int ,int ,int,int ,int ,int,char*) ;
 scalar_t__ prompt_yesno (char*) ;
 TYPE_2__ repo ;
 int report (char*) ;
 int run_prompt_command (struct view*,char const**) ;
 scalar_t__ string_format (char*,char*,char*,char const*) ;
 scalar_t__ watch_dirty (int *) ;

enum request
exec_run_request(struct view *view, struct run_request *req)
{
 const char **argv = ((void*)0);
 bool confirmed = 0;
 enum request request = REQ_NONE;
 char cmd[SIZEOF_MED_STR];
 const char *req_argv[SIZEOF_ARG];
 int req_argc = 0;

 if (!argv_to_string(req->argv, cmd, sizeof(cmd), " ")
     || !argv_from_string_no_quotes(req_argv, &req_argc, cmd)
     || !argv_format(view->env, &argv, req_argv, 0, 1)
     || !argv) {
  report("Failed to format arguments");
  return REQ_NONE;
 }

 if (req->flags.internal) {
  request = run_prompt_command(view, argv);

 } else {
  confirmed = !req->flags.confirm;

  if (req->flags.confirm) {
   char cmd[SIZEOF_STR], prompt[SIZEOF_STR];
   const char *and_exit = req->flags.exit ? " and exit" : "";

   if (argv_to_string_quoted(argv, cmd, sizeof(cmd), " ") &&
       string_format(prompt, "Run `%s`%s?", cmd, and_exit) &&
       prompt_yesno(prompt)) {
    confirmed = 1;
   }
  }

  if (confirmed)
   open_external_viewer(argv, repo.cdup, req->flags.silent,
          !req->flags.exit, req->flags.echo, req->flags.quick, 0, "");
 }

 if (argv)
  argv_free(argv);
 free(argv);

 if (request == REQ_NONE) {
  if (req->flags.confirm && !confirmed)
   request = REQ_NONE;

  else if (req->flags.exit)
   request = REQ_QUIT;

  else if (!req->flags.internal && watch_dirty(&view->watch))
   request = REQ_REFRESH;

 }

 return request;
}

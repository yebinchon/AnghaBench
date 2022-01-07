
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {int keymap; } ;
typedef enum request { ____Placeholder_request } request ;
struct TYPE_2__ {int * git_dir; } ;


 int CODESET ;
 char* ENCODING_UTF8 ;
 int EXIT_SUCCESS ;
 scalar_t__ ICONV_NONE ;
 int ICONV_TRANSLIT ;
 int LC_ALL ;
 int REQ_NONE ;


 int REQ_VIEW_HELP ;
 int REQ_VIEW_PAGER ;
 int SIGHUP ;
 int SIGPIPE ;
 int SIGSEGV ;
 scalar_t__ SIG_ERR ;
 int SIG_IGN ;
 int SIZEOF_STR ;
 int STDIN_FILENO ;
 int atexit (int ) ;
 size_t current_view ;
 int die (char*) ;
 int die_if_failed (int ,char*) ;
 struct view** display ;
 int exit (int ) ;
 int get_view_key (struct view*,int ) ;
 char* getenv (char*) ;
 int handle_git_prefix () ;
 int hangup_children ;
 scalar_t__ iconv_open (char const*,char*) ;
 int init_display () ;
 int init_tty () ;
 int isatty (int ) ;
 int load_git_config () ;
 int load_options () ;
 int load_refs (int) ;
 int load_repo_info () ;
 char* nl_langinfo (int ) ;
 int open_pager_mode (int) ;
 int open_prompt (struct view*) ;
 scalar_t__ opt_iconv_out ;
 int parse_options (int,char const**,int) ;
 int prompt_init () ;
 int read_key_combo (int ) ;
 TYPE_1__ repo ;
 int report (char*,int ) ;
 int run_prompt_command (int *,char const**) ;
 scalar_t__ setlocale (int ,char*) ;
 int sighup_handler ;
 scalar_t__ signal (int ,int ) ;
 int sigsegv_handler ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ string_format (char*,char*,char const*,int ) ;
 scalar_t__ view_driver (struct view*,int) ;

int
main(int argc, const char *argv[])
{
 const char *codeset = ENCODING_UTF8;
 bool pager_mode = !isatty(STDIN_FILENO);
 enum request request = parse_options(argc, argv, pager_mode);
 struct view *view;

 init_tty();

 atexit(hangup_children);

 if (signal(SIGPIPE, SIG_IGN) == SIG_ERR)
  die("Failed to setup signal handler");

 if (signal(SIGHUP, sighup_handler) == SIG_ERR)
  die("Failed to setup signal handler");






 if (setlocale(LC_ALL, "")) {
  codeset = nl_langinfo(CODESET);
 }

 die_if_failed(handle_git_prefix(), "Failed to handle GIT_PREFIX");
 die_if_failed(load_repo_info(), "Failed to load repo info.");
 die_if_failed(load_options(), "Failed to load user config.");
 die_if_failed(load_git_config(), "Failed to load repo config.");

 prompt_init();


 if (!repo.git_dir[0] && request != REQ_VIEW_PAGER)
  die("Not a git repository");

 if (codeset && strcmp(codeset, ENCODING_UTF8)) {
  char translit[SIZEOF_STR];

  if (string_format(translit, "%s%s", codeset, ICONV_TRANSLIT))
   opt_iconv_out = iconv_open(translit, ENCODING_UTF8);
  else
   opt_iconv_out = iconv_open(codeset, ENCODING_UTF8);
  if (opt_iconv_out == ICONV_NONE)
   die("Failed to initialize character set conversion");
 }

 die_if_failed(load_refs(0), "Failed to load refs.");

 init_display();

 if (pager_mode)
  request = open_pager_mode(request);

 if (getenv("TIG_SCRIPT")) {
  const char *script_command[] = { "script", getenv("TIG_SCRIPT"), ((void*)0) };

  run_prompt_command(((void*)0), script_command);
 }

 while (view_driver(display[current_view], request)) {
  view = display[current_view];
  request = read_key_combo(view->keymap);



  switch (request) {
  case 128:
   report("Unknown key, press %s for help",
          get_view_key(view, REQ_VIEW_HELP));
   request = REQ_NONE;
   break;
  case 129:
   request = open_prompt(view);
   break;
  default:
   break;
  }
 }

 exit(EXIT_SUCCESS);

 return 0;
}

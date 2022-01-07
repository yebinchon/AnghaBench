
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options_table_entry {int scope; int * name; } ;


 int CLIENT_256COLOURS ;
 int CLIENT_CONTROL ;
 int CLIENT_CONTROLCONTROL ;
 int CLIENT_LOGIN ;
 int CLIENT_UTF8 ;
 int CODESET ;
 int LC_CTYPE ;
 int LC_TIME ;
 int MODEKEY_EMACS ;
 int MODEKEY_VI ;
 int OPTIONS_TABLE_SERVER ;
 int OPTIONS_TABLE_SESSION ;
 int OPTIONS_TABLE_WINDOW ;
 char* VERSION ;
 int client_main (int ,int,char**,int) ;
 char** environ ;
 int environ_create () ;
 int environ_put (int ,char*) ;
 int environ_set (int ,char*,char*,char const*) ;
 int err (int,char*) ;
 int errx (int,char*,...) ;
 int exit (int) ;
 char* find_cwd () ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 char* getenv (char*) ;
 int getopt (int,char**,char*) ;
 char* getprogname () ;
 int getptmfd () ;
 char* getshell () ;
 int global_environ ;
 int global_options ;
 int global_s_options ;
 int global_w_options ;
 int log_add_level () ;
 char* make_label (char*,char**) ;
 char* nl_langinfo (int ) ;
 char const* optarg ;
 scalar_t__ optind ;
 int options_create (int *) ;
 int options_default (int ,struct options_table_entry const*) ;
 int options_set_number (int ,char*,int) ;
 int options_set_string (int ,char*,int ,char*,char const*) ;
 struct options_table_entry* options_table ;
 int osdep_event_init () ;
 scalar_t__ pledge (char*,int *) ;
 int printf (char*,char*,char*) ;
 int ptm_fd ;
 int set_cfg_file (char const*) ;
 int * setlocale (int ,char*) ;
 char const* shell_command ;
 char* socket_path ;
 int stderr ;
 scalar_t__ strcasecmp (char const*,char*) ;
 int * strcasestr (char const*,char*) ;
 size_t strcspn (char*,char*) ;
 char* strrchr (char const*,char) ;
 int * strstr (char const*,char*) ;
 int tzset () ;
 int usage () ;
 char* xstrdup (char const*) ;

int
main(int argc, char **argv)
{
 char *path, *label, *cause, **var;
 const char *s, *shell, *cwd;
 int opt, flags, keys;
 const struct options_table_entry *oe;

 if (setlocale(LC_CTYPE, "en_US.UTF-8") == ((void*)0) &&
     setlocale(LC_CTYPE, "C.UTF-8") == ((void*)0)) {
  if (setlocale(LC_CTYPE, "") == ((void*)0))
   errx(1, "invalid LC_ALL, LC_CTYPE or LANG");
  s = nl_langinfo(CODESET);
  if (strcasecmp(s, "UTF-8") != 0 && strcasecmp(s, "UTF8") != 0)
   errx(1, "need UTF-8 locale (LC_CTYPE) but have %s", s);
 }

 setlocale(LC_TIME, "");
 tzset();

 if (**argv == '-')
  flags = CLIENT_LOGIN;
 else
  flags = 0;

 label = path = ((void*)0);
 while ((opt = getopt(argc, argv, "2c:Cdf:lL:qS:uUVv")) != -1) {
  switch (opt) {
  case '2':
   flags |= CLIENT_256COLOURS;
   break;
  case 'c':
   shell_command = optarg;
   break;
  case 'C':
   if (flags & CLIENT_CONTROL)
    flags |= CLIENT_CONTROLCONTROL;
   else
    flags |= CLIENT_CONTROL;
   break;
  case 'V':
   printf("%s %s\n", getprogname(), VERSION);
   exit(0);
  case 'f':
   set_cfg_file(optarg);
   break;
  case 'l':
   flags |= CLIENT_LOGIN;
   break;
  case 'L':
   free(label);
   label = xstrdup(optarg);
   break;
  case 'q':
   break;
  case 'S':
   free(path);
   path = xstrdup(optarg);
   break;
  case 'u':
   flags |= CLIENT_UTF8;
   break;
  case 'v':
   log_add_level();
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 if (shell_command != ((void*)0) && argc != 0)
  usage();

 if ((ptm_fd = getptmfd()) == -1)
  err(1, "getptmfd");
 if (pledge("stdio rpath wpath cpath flock fattr unix getpw sendfd "
     "recvfd proc exec tty ps", ((void*)0)) != 0)
  err(1, "pledge");
 if (getenv("TMUX") != ((void*)0))
  flags |= CLIENT_UTF8;
 else {
  s = getenv("LC_ALL");
  if (s == ((void*)0) || *s == '\0')
   s = getenv("LC_CTYPE");
  if (s == ((void*)0) || *s == '\0')
   s = getenv("LANG");
  if (s == ((void*)0) || *s == '\0')
   s = "";
  if (strcasestr(s, "UTF-8") != ((void*)0) ||
      strcasestr(s, "UTF8") != ((void*)0))
   flags |= CLIENT_UTF8;
 }

 global_environ = environ_create();
 for (var = environ; *var != ((void*)0); var++)
  environ_put(global_environ, *var);
 if ((cwd = find_cwd()) != ((void*)0))
  environ_set(global_environ, "PWD", "%s", cwd);

 global_options = options_create(((void*)0));
 global_s_options = options_create(((void*)0));
 global_w_options = options_create(((void*)0));
 for (oe = options_table; oe->name != ((void*)0); oe++) {
  if (oe->scope & OPTIONS_TABLE_SERVER)
   options_default(global_options, oe);
  if (oe->scope & OPTIONS_TABLE_SESSION)
   options_default(global_s_options, oe);
  if (oe->scope & OPTIONS_TABLE_WINDOW)
   options_default(global_w_options, oe);
 }





 shell = getshell();
 options_set_string(global_s_options, "default-shell", 0, "%s", shell);


 if ((s = getenv("VISUAL")) != ((void*)0) || (s = getenv("EDITOR")) != ((void*)0)) {
  if (strrchr(s, '/') != ((void*)0))
   s = strrchr(s, '/') + 1;
  if (strstr(s, "vi") != ((void*)0))
   keys = MODEKEY_VI;
  else
   keys = MODEKEY_EMACS;
  options_set_number(global_s_options, "status-keys", keys);
  options_set_number(global_w_options, "mode-keys", keys);
 }






 if (path == ((void*)0) && label == ((void*)0)) {
  s = getenv("TMUX");
  if (s != ((void*)0) && *s != '\0' && *s != ',') {
   path = xstrdup(s);
   path[strcspn(path, ",")] = '\0';
  }
 }
 if (path == ((void*)0) && (path = make_label(label, &cause)) == ((void*)0)) {
  if (cause != ((void*)0)) {
   fprintf(stderr, "%s\n", cause);
   free(cause);
  }
  exit(1);
 }
 socket_path = path;
 free(label);


 exit(client_main(osdep_event_init(), argc, argv, flags));
}

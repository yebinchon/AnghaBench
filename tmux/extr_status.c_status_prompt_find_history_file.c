
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* find_home () ;
 int global_options ;
 char* options_get_string (int ,char*) ;
 int xasprintf (char**,char*,char const*,char const*) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static char *
status_prompt_find_history_file(void)
{
 const char *home, *history_file;
 char *path;

 history_file = options_get_string(global_options, "history-file");
 if (*history_file == '\0')
  return (((void*)0));
 if (*history_file == '/')
  return (xstrdup(history_file));

 if (history_file[0] != '~' || history_file[1] != '/')
  return (((void*)0));
 if ((home = find_home()) == ((void*)0))
  return (((void*)0));
 xasprintf(&path, "%s%s", home, history_file + 1);
 return (path);
}

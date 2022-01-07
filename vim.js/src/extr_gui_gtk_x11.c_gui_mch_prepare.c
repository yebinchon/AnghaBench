
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; int flags; } ;
typedef TYPE_1__ cmdline_option_T ;
typedef int char_u ;
typedef int buf ;
struct TYPE_5__ {void* starting; void* dofork; scalar_t__ geom; } ;



 int ARG_COMPAT_LONG ;


 int ARG_FOR_GTK ;

 int ARG_HAS_VALUE ;

 int ARG_INDEX_MASK ;
 int ARG_KEEP ;
 int ARG_NEEDS_GUI ;




 void* FALSE ;
 int G_DIR_SEPARATOR ;
 int MAXPATHL ;
 scalar_t__ OK ;
 void* TRUE ;
 char* abs_restart_command ;
 scalar_t__ alloc (unsigned int) ;
 char* background_argument ;
 TYPE_1__* cmdline_options ;
 char* font_argument ;
 char* foreground_argument ;
 void* found_iconic_arg ;
 void* found_reverse_arg ;
 int g_return_if_fail (int ) ;
 TYPE_2__ gui ;
 size_t gui_argc ;
 char** gui_argv ;
 scalar_t__ mch_FullName (int *,int *,int,void*) ;
 int mch_memmove (char**,char**,int) ;
 char* netbeansArg ;
 char* restart_command ;
 char* role_argument ;
 int * strchr (char*,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int * vim_strchr (int *,char) ;
 scalar_t__ vim_strsave (int *) ;

void
gui_mch_prepare(int *argc, char **argv)
{
    const cmdline_option_T *option;
    int i = 0;
    int len = 0;
    gui_argc = 0;
    gui_argv = (char **)alloc((unsigned)((*argc + 1) * sizeof(char *)));

    g_return_if_fail(gui_argv != ((void*)0));

    gui_argv[gui_argc++] = argv[i++];

    while (i < *argc)
    {

 if (argv[i][0] != '-' && argv[i][0] != '+')
 {
     ++i;
     continue;
 }


 for (option = &cmdline_options[0]; option->name != ((void*)0); ++option)
 {
     len = strlen(option->name);

     if (strncmp(argv[i], option->name, len) == 0)
     {
  if (argv[i][len] == '\0')
      break;

  if (argv[i][len] == '=' && (option->flags & ARG_HAS_VALUE))
      break;






     }
     else if ((option->flags & ARG_COMPAT_LONG)
   && strcmp(argv[i], option->name + 1) == 0)
     {


  argv[i] = (char *)option->name;
  break;
     }
 }
 if (option->name == ((void*)0))
 {
     ++i;
     continue;
 }

 if (option->flags & ARG_FOR_GTK)
 {


     gui_argv[gui_argc++] = argv[i];
 }
 else
 {
     char *value = ((void*)0);



     if (option->flags & ARG_HAS_VALUE)
     {
  if (argv[i][len] == '=')
      value = &argv[i][len + 1];
  else if (i + 1 < *argc && strcmp(argv[i + 1], "--") != 0)
      value = argv[i + 1];
     }


     switch (option->flags & ARG_INDEX_MASK)
     {
  case 129:
      found_reverse_arg = TRUE;
      break;
  case 130:
      found_reverse_arg = FALSE;
      break;
  case 135:
      font_argument = value;
      break;
  case 133:
      if (value != ((void*)0))
   gui.geom = vim_strsave((char_u *)value);
      break;
  case 136:
      background_argument = value;
      break;
  case 134:
      foreground_argument = value;
      break;
  case 132:
      found_iconic_arg = TRUE;
      break;
  case 128:
      role_argument = value;
      break;






  default:
      break;
     }
 }



 if (option->flags & ARG_NEEDS_GUI)
     gui.starting = TRUE;

 if (option->flags & ARG_KEEP)
     ++i;
 else
 {

     if (--*argc > i)
     {
  int n_strip = 1;


  if ((option->flags & ARG_HAS_VALUE)
   && argv[i][len] != '='
   && strcmp(argv[i + 1], "--") != 0)
  {
      ++n_strip;
      --*argc;
      if (option->flags & ARG_FOR_GTK)
   gui_argv[gui_argc++] = argv[i + 1];
  }

  if (*argc > i)
      mch_memmove(&argv[i], &argv[i + n_strip],
      (*argc - i) * sizeof(char *));
     }
     argv[*argc] = ((void*)0);
 }
    }

    gui_argv[gui_argc] = ((void*)0);
}

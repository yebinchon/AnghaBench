
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int strm_value ;
typedef int strm_array ;
struct TYPE_8__ {int lval; } ;
typedef TYPE_1__ parser_state ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int FALSE ;
 void* TRUE ;
 int dump_node (int ,int ) ;
 int fprintf (int ,char*,char const*,char const) ;
 scalar_t__ node_parse_file (TYPE_1__*,char const*) ;
 int node_parse_free (TYPE_1__*) ;
 int node_parse_init (TYPE_1__*) ;
 int node_parse_input (TYPE_1__*,int ,char*) ;
 scalar_t__ node_parse_string (TYPE_1__*,char const*) ;
 int node_run (TYPE_1__*) ;
 int node_stop () ;
 int puts (char*) ;
 int stderr ;
 int stdin ;
 int strlen (char const*) ;
 int strm_ary_new (int *,int) ;
 int * strm_ary_ptr (int ) ;
 int strm_ary_value (int ) ;
 int strm_loop () ;
 void* strm_option_verbose ;
 int strm_str_new (char const*,int ) ;
 int strm_str_value (int ) ;
 int strm_var_def (int *,char*,int ) ;

int
main(int argc, const char**argv)
{
  const char *prog = argv[0];
  const char *e_prog = ((void*)0);
  int i, n = 0, verbose = FALSE, check = FALSE;
  parser_state state;

  while (argc > 1 && argv[1][0] == '-') {
    const char *s = argv[1]+1;
    while (*s) {
      switch (*s) {
      case 'v':
        verbose = TRUE;

      case 'w':
        strm_option_verbose = TRUE;
        break;
      case 'c':
        check = TRUE;
        break;
      case 'e':
        if (s[1] == '\0') {
          e_prog = argv[2];
          argc--; argv++;
        }
        else {
          e_prog = &s[1];
        }
        goto next_arg;
      default:
        fprintf(stderr, "%s: unknown option -%c\n", prog, *s);
      }
      s++;
    }
  next_arg:
    argc--; argv++;
  }
  node_parse_init(&state);

  if (e_prog) {
    n += node_parse_string(&state, e_prog);
  }
  else if (argc == 1) {
    n = node_parse_input(&state, stdin, "stdin");
  }
  else {
    for (i=1; i<argc; i++) {
      n += node_parse_file(&state, argv[i]);
    }
  }

  if (n == 0) {
    if (verbose) {
      dump_node(state.lval, 0);
    }
    if (check) {
      puts("Syntax OK");
    }
    else {
      strm_array av = strm_ary_new(((void*)0), argc);
      strm_value* buf = strm_ary_ptr(av);
      int i;

      for (i=0; i<argc; i++) {
        buf[i] = strm_str_value(strm_str_new(argv[i], strlen(argv[i])));
      }
      strm_var_def(((void*)0), "ARGV", strm_ary_value(av));
      node_run(&state);
      strm_loop();
      node_stop();
    }
  }
  else if (check) {
    puts("Syntax NG");
  }
  node_parse_free(&state);
  return n > 0 ? EXIT_FAILURE : EXIT_SUCCESS;
}

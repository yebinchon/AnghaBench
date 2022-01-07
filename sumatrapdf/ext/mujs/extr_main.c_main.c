
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int JS_STRICT ;
 int PS1 ;
 int add_history (char*) ;
 int eval_print (int *,char*) ;
 int free (char*) ;
 scalar_t__ isatty (int ) ;
 int jsB_compile ;
 int jsB_gc ;
 int jsB_load ;
 int jsB_print ;
 int jsB_quit ;
 int jsB_read ;
 int jsB_readline ;
 int jsB_repr ;
 int jsB_write ;
 scalar_t__ js_dofile (int *,char*) ;
 int js_dostring (int *,char*) ;
 int js_freestate (int *) ;
 int js_gc (int *,int ) ;
 int js_newarray (int *) ;
 int js_newcfunction (int *,int ,char*,int) ;
 int * js_newstate (int *,int *,int ) ;
 int js_pushstring (int *,char*) ;
 int js_setglobal (int *,char*) ;
 int js_setindex (int *,int,int ) ;
 int putchar (char) ;
 char* read_stdin () ;
 char* readline (int ) ;
 char* require_js ;
 int rl_bind_key (char,int ) ;
 int rl_insert ;
 char* stacktrace_js ;
 int usage () ;
 int using_history () ;
 int xgetopt (int,char**,char*) ;
 int xoptind ;

int
main(int argc, char **argv)
{
 char *input;
 js_State *J;
 int status = 0;
 int strict = 0;
 int interactive = 0;
 int i, c;

 while ((c = xgetopt(argc, argv, "is")) != -1) {
  switch (c) {
  default: usage(); break;
  case 'i': interactive = 1; break;
  case 's': strict = 1; break;
  }
 }

 J = js_newstate(((void*)0), ((void*)0), strict ? JS_STRICT : 0);

 js_newcfunction(J, jsB_gc, "gc", 0);
 js_setglobal(J, "gc");

 js_newcfunction(J, jsB_load, "load", 1);
 js_setglobal(J, "load");

 js_newcfunction(J, jsB_compile, "compile", 2);
 js_setglobal(J, "compile");

 js_newcfunction(J, jsB_print, "print", 0);
 js_setglobal(J, "print");

 js_newcfunction(J, jsB_write, "write", 0);
 js_setglobal(J, "write");

 js_newcfunction(J, jsB_read, "read", 1);
 js_setglobal(J, "read");

 js_newcfunction(J, jsB_readline, "readline", 0);
 js_setglobal(J, "readline");

 js_newcfunction(J, jsB_repr, "repr", 0);
 js_setglobal(J, "repr");

 js_newcfunction(J, jsB_quit, "quit", 1);
 js_setglobal(J, "quit");

 js_dostring(J, require_js);
 js_dostring(J, stacktrace_js);

 if (xoptind == argc) {
  interactive = 1;
 } else {
  c = xoptind++;

  js_newarray(J);
  i = 0;
  while (xoptind < argc) {
   js_pushstring(J, argv[xoptind++]);
   js_setindex(J, -2, i++);
  }
  js_setglobal(J, "scriptArgs");

  if (js_dofile(J, argv[c]))
   status = 1;
 }

 if (interactive) {
  if (isatty(0)) {
   using_history();
   rl_bind_key('\t', rl_insert);
   input = readline(PS1);
   while (input) {
    eval_print(J, input);
    if (*input)
     add_history(input);
    free(input);
    input = readline(PS1);
   }
   putchar('\n');
  } else {
   input = read_stdin();
   if (!input || !js_dostring(J, input))
    status = 1;
   free(input);
  }
 }

 js_gc(J, 0);
 js_freestate(J);

 return status;
}

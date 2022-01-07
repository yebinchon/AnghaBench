
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int add_history (char*) ;
 int free (char*) ;
 int js_pushnull (int *) ;
 int js_pushstring (int *,char*) ;
 char* readline (char*) ;

__attribute__((used)) static void jsB_readline(js_State *J)
{
 char *line = readline("");
 if (!line) {
  js_pushnull(J);
  return;
 }
 js_pushstring(J, line);
 if (*line)
  add_history(line);
 free(line);
}

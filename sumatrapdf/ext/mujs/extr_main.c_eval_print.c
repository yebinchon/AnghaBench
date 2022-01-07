
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int fprintf (int ,char*,char*) ;
 scalar_t__ js_isdefined (int *,int) ;
 scalar_t__ js_pcall (int *,int ) ;
 scalar_t__ js_ploadstring (int *,char*,char const*) ;
 int js_pop (int *,int) ;
 int js_pushundefined (int *) ;
 char* js_tryrepr (int *,int,char*) ;
 char* js_trystring (int *,int,char*) ;
 int printf (char*,char*) ;
 int stderr ;

__attribute__((used)) static int eval_print(js_State *J, const char *source)
{
 if (js_ploadstring(J, "[stdin]", source)) {
  fprintf(stderr, "%s\n", js_trystring(J, -1, "Error"));
  js_pop(J, 1);
  return 1;
 }
 js_pushundefined(J);
 if (js_pcall(J, 0)) {
  fprintf(stderr, "%s\n", js_trystring(J, -1, "Error"));
  js_pop(J, 1);
  return 1;
 }
 if (js_isdefined(J, -1)) {
  printf("%s\n", js_tryrepr(J, -1, "can't convert to string"));
 }
 js_pop(J, 1);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_endtry (int *) ;
 int js_freestate (int *) ;
 int js_gc (int *,int ) ;
 int * js_newstate (int *,int *,int ) ;
 int js_pop (int *,int) ;
 int js_ppfile (int *,char*,int) ;
 int js_report (int *,int ) ;
 scalar_t__ js_try (int *) ;
 int js_trystring (int *,int,char*) ;
 int strcmp (char*,char*) ;

int
main(int argc, char **argv)
{
 js_State *J;
 int minify = 0;
 int i;

 J = js_newstate(((void*)0), ((void*)0), 0);

 for (i = 1; i < argc; ++i) {
  if (!strcmp(argv[i], "-m"))
   minify = 1;
  else if (!strcmp(argv[i], "-mm"))
   minify = 2;
  else if (!strcmp(argv[i], "-s"))
   minify = 3;
  else {
   if (js_try(J)) {
    js_report(J, js_trystring(J, -1, "Error"));
    js_pop(J, 1);
    continue;
   }
   js_ppfile(J, argv[i], minify);
   js_endtry(J);
  }
 }

 js_gc(J, 0);
 js_freestate(J);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_call (int *,int) ;
 int js_copy (int *,int) ;
 int js_delproperty (int *,int,char const*) ;
 int js_getlength (int *,int) ;
 int js_getproperty (int *,int,char const*) ;
 scalar_t__ js_isarray (int *,int) ;
 scalar_t__ js_isobject (int *,int) ;
 scalar_t__ js_isundefined (int *,int) ;
 char* js_itoa (char*,int) ;
 char* js_nextiterator (int *,int) ;
 int js_pop (int *,int) ;
 int js_pushiterator (int *,int,int) ;
 int js_pushstring (int *,char const*) ;
 int js_rot2 (int *) ;
 int js_rot2pop1 (int *) ;
 int js_setproperty (int *,int,char const*) ;

__attribute__((used)) static void jsonrevive(js_State *J, const char *name)
{
 const char *key;
 char buf[32];




 js_getproperty(J, -1, name);

 if (js_isobject(J, -1)) {
  if (js_isarray(J, -1)) {
   int i = 0;
   int n = js_getlength(J, -1);
   for (i = 0; i < n; ++i) {
    jsonrevive(J, js_itoa(buf, i));
    if (js_isundefined(J, -1)) {
     js_pop(J, 1);
     js_delproperty(J, -1, buf);
    } else {
     js_setproperty(J, -2, buf);
    }
   }
  } else {
   js_pushiterator(J, -1, 1);
   while ((key = js_nextiterator(J, -1))) {
    js_rot2(J);
    jsonrevive(J, key);
    if (js_isundefined(J, -1)) {
     js_pop(J, 1);
     js_delproperty(J, -1, key);
    } else {
     js_setproperty(J, -2, key);
    }
    js_rot2(J);
   }
   js_pop(J, 1);
  }
 }

 js_copy(J, 2);
 js_copy(J, -3);
 js_pushstring(J, name);
 js_copy(J, -4);
 js_call(J, 2);
 js_rot2pop1(J);
}

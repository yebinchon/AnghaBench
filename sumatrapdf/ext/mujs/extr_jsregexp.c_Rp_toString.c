
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_3__ {char* source; int flags; } ;
typedef TYPE_1__ js_Regexp ;


 int JS_REGEXP_G ;
 int JS_REGEXP_I ;
 int JS_REGEXP_M ;
 int js_endtry (int *) ;
 int js_free (int *,char*) ;
 char* js_malloc (int *,scalar_t__) ;
 int js_pop (int *,int ) ;
 int js_pushstring (int *,char*) ;
 int js_throw (int *) ;
 TYPE_1__* js_toregexp (int *,int ) ;
 scalar_t__ js_try (int *) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void Rp_toString(js_State *J)
{
 js_Regexp *re;
 char *out;

 re = js_toregexp(J, 0);

 out = js_malloc(J, strlen(re->source) + 6);
 strcpy(out, "/");
 strcat(out, re->source);
 strcat(out, "/");
 if (re->flags & JS_REGEXP_G) strcat(out, "g");
 if (re->flags & JS_REGEXP_I) strcat(out, "i");
 if (re->flags & JS_REGEXP_M) strcat(out, "m");

 if (js_try(J)) {
  js_free(J, out);
  js_throw(J);
 }
 js_pop(J, 0);
 js_pushstring(J, out);
 js_endtry(J);
 js_free(J, out);
}

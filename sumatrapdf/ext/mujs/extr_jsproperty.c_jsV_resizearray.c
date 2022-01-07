
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_9__ {int length; } ;
struct TYPE_10__ {TYPE_1__ a; } ;
struct TYPE_11__ {int count; TYPE_2__ u; } ;
typedef TYPE_3__ js_Object ;


 int jsV_delproperty (int *,TYPE_3__*,char const*) ;
 TYPE_3__* jsV_newiterator (int *,TYPE_3__*,int) ;
 char* jsV_nextiterator (int *,TYPE_3__*) ;
 int jsV_numbertointeger (int ) ;
 int jsV_numbertostring (int *,char*,int) ;
 int jsV_stringtonumber (int *,char const*) ;
 char const* js_itoa (char*,int) ;
 int strcmp (char const*,int ) ;

void jsV_resizearray(js_State *J, js_Object *obj, int newlen)
{
 char buf[32];
 const char *s;
 int k;
 if (newlen < obj->u.a.length) {
  if (obj->u.a.length > obj->count * 2) {
   js_Object *it = jsV_newiterator(J, obj, 1);
   while ((s = jsV_nextiterator(J, it))) {
    k = jsV_numbertointeger(jsV_stringtonumber(J, s));
    if (k >= newlen && !strcmp(s, jsV_numbertostring(J, buf, k)))
     jsV_delproperty(J, obj, s);
   }
  } else {
   for (k = newlen; k < obj->u.a.length; ++k) {
    jsV_delproperty(J, obj, js_itoa(buf, k));
   }
  }
 }
 obj->u.a.length = newlen;
}

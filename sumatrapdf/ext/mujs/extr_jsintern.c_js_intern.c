
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * strings; } ;
typedef TYPE_1__ js_State ;


 int * jsS_insert (TYPE_1__*,int *,char const*,char const**) ;
 int jsS_sentinel ;

const char *js_intern(js_State *J, const char *s)
{
 const char *result;
 if (!J->strings)
  J->strings = &jsS_sentinel;
 J->strings = jsS_insert(J, J->strings, s, &result);
 return result;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lookahead; } ;
typedef TYPE_1__ js_State ;


 int jsonnext (TYPE_1__*) ;

__attribute__((used)) static int jsonaccept(js_State *J, int t)
{
 if (J->lookahead == t) {
  jsonnext(J);
  return 1;
 }
 return 0;
}

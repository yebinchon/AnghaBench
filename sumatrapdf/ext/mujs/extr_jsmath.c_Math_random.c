
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int seed; } ;
typedef TYPE_1__ js_State ;


 double JS_RAND_MAX ;
 double jsM_rand_r (int *) ;
 int js_pushnumber (TYPE_1__*,double) ;

__attribute__((used)) static void Math_random(js_State *J)
{
 js_pushnumber(J, jsM_rand_r(&J->seed) / (JS_RAND_MAX + 1.0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_report (int *,char*) ;

__attribute__((used)) static void js_defaultpanic(js_State *J)
{
 js_report(J, "uncaught exception");

}

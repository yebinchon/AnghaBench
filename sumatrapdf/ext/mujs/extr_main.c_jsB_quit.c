
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int exit (int ) ;
 int js_tonumber (int *,int) ;

__attribute__((used)) static void jsB_quit(js_State *J)
{
 exit(js_tonumber(J, 1));
}

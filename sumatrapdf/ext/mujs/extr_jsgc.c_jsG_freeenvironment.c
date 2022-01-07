
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int js_Environment ;


 int js_free (int *,int *) ;

__attribute__((used)) static void jsG_freeenvironment(js_State *J, js_Environment *env)
{
 js_free(J, env);
}

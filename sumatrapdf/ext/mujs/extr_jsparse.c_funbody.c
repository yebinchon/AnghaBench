
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int js_Ast ;


 int jsP_expect (int *,char) ;
 int * script (int *,char) ;

__attribute__((used)) static js_Ast *funbody(js_State *J)
{
 js_Ast *a;
 jsP_expect(J, '{');
 a = script(J, '}');
 jsP_expect(J, '}');
 return a;
}

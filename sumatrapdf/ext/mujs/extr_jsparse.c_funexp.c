
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int js_Ast ;


 int * EXP3 (int ,int *,int *,int *) ;
 int FUN ;
 int * funbody (int *) ;
 int * identifieropt (int *) ;
 int jsP_expect (int *,char) ;
 int * parameters (int *) ;

__attribute__((used)) static js_Ast *funexp(js_State *J, int line)
{
 js_Ast *a, *b, *c;
 a = identifieropt(J);
 jsP_expect(J, '(');
 b = parameters(J);
 jsP_expect(J, ')');
 c = funbody(J);
 return EXP3(FUN, a, b, c);
}

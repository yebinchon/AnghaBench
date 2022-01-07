
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int js_Ast ;


 int EXP2 (int ,int *,int ) ;
 int EXP3 (int ,int *,int *,int *) ;
 int FUN ;
 int LIST (int ) ;
 int * STM1 (int ,int ) ;
 int VAR ;
 int * funbody (int *) ;
 int * identifier (int *) ;
 int jsP_expect (int *,char) ;
 int * parameters (int *) ;

__attribute__((used)) static js_Ast *funstm(js_State *J, int line)
{
 js_Ast *a, *b, *c;
 a = identifier(J);
 jsP_expect(J, '(');
 b = parameters(J);
 jsP_expect(J, ')');
 c = funbody(J);

 return STM1(VAR, LIST(EXP2(VAR, a, EXP3(FUN, a, b, c))));
}

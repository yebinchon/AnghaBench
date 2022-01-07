
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int type; struct TYPE_10__* b; struct TYPE_10__* a; struct TYPE_10__* d; struct TYPE_10__* c; } ;
typedef TYPE_1__ js_Ast ;



 int STM_BLOCK ;
 int in (int) ;
 int minify ;
 int nl () ;
 int pargs (int,TYPE_1__*) ;
 int pblock (int,TYPE_1__*) ;
 int pc (char) ;
 int pcaselist (int,TYPE_1__*) ;
 int pexp (int,TYPE_1__*) ;
 int ps (char*) ;
 int pstmh (int,TYPE_1__*) ;
 int pstmlist (int,TYPE_1__*) ;
 int pvarlist (int,TYPE_1__*) ;
 int sp () ;

__attribute__((used)) static void pstm(int d, js_Ast *stm)
{
 if (stm->type == STM_BLOCK) {
  pblock(d, stm);
  return;
 }

 in(d);

 switch (stm->type) {
 case 146:
  ps("function ");
  pexp(d, stm->a);
  pc('(');
  pargs(d, stm->b);
  pc(')'); sp(); pc('{'); nl();
  pstmlist(d, stm->c);
  in(d); pc('}');
  break;

 case 141:
  pc(';');
  break;

 case 130:
  ps("var ");
  pvarlist(d, stm->a);
  pc(';');
  break;

 case 136:
  ps("if"); sp(); pc('('); pexp(d, stm->a); pc(')');
  pstmh(d, stm->b);
  if (stm->c) {
   nl(); in(d); ps("else");
   pstmh(d, stm->c);
  }
  break;

 case 142:
  ps("do");
  pstmh(d, stm->a);
  nl();
  in(d); ps("while"); sp(); pc('('); pexp(d, stm->b); pc(')'); pc(';');
  break;

 case 129:
  ps("while"); sp(); pc('('); pexp(d, stm->a); pc(')');
  pstmh(d, stm->b);
  break;

 case 140:
  ps("for"); sp(); pc('(');
  pexp(d, stm->a); pc(';'); sp();
  pexp(d, stm->b); pc(';'); sp();
  pexp(d, stm->c); pc(')');
  pstmh(d, stm->d);
  break;
 case 137:
  ps("for"); sp(); ps("(var ");
  pvarlist(d, stm->a); pc(';'); sp();
  pexp(d, stm->b); pc(';'); sp();
  pexp(d, stm->c); pc(')');
  pstmh(d, stm->d);
  break;
 case 139:
  ps("for"); sp(); pc('(');
  pexp(d, stm->a); ps(" in ");
  pexp(d, stm->b); pc(')');
  pstmh(d, stm->c);
  break;
 case 138:
  ps("for"); sp(); ps("(var ");
  pvarlist(d, stm->a); ps(" in ");
  pexp(d, stm->b); pc(')');
  pstmh(d, stm->c);
  break;

 case 144:
  ps("continue");
  if (stm->a) {
   pc(' '); pexp(d, stm->a);
  }
  pc(';');
  break;

 case 145:
  ps("break");
  if (stm->a) {
   pc(' '); pexp(d, stm->a);
  }
  pc(';');
  break;

 case 134:
  ps("return");
  if (stm->a) {
   pc(' '); pexp(d, stm->a);
  }
  pc(';');
  break;

 case 128:
  ps("with"); sp(); pc('('); pexp(d, stm->a); pc(')');
  pstmh(d, stm->b);
  break;

 case 133:
  ps("switch"); sp(); pc('(');
  pexp(d, stm->a);
  pc(')'); sp(); pc('{'); nl();
  pcaselist(d, stm->b);
  in(d); pc('}');
  break;

 case 132:
  ps("throw "); pexp(d, stm->a); pc(';');
  break;

 case 131:
  ps("try");
  if (minify && stm->a->type != STM_BLOCK)
   pc(' ');
  pstmh(d, stm->a);
  if (stm->b && stm->c) {
   nl(); in(d); ps("catch"); sp(); pc('('); pexp(d, stm->b); pc(')');
   pstmh(d, stm->c);
  }
  if (stm->d) {
   nl(); in(d); ps("finally");
   pstmh(d, stm->d);
  }
  break;

 case 135:
  pexp(d, stm->a); pc(':'); sp(); pstm(d, stm->b);
  break;

 case 143:
  ps("debugger");
  pc(';');
  break;

 default:
  pexp(d, stm);
  pc(';');
 }
}

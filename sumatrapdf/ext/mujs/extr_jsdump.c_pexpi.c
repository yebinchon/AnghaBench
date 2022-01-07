
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int type; char* string; double number; struct TYPE_9__* c; struct TYPE_9__* b; struct TYPE_9__* a; } ;
typedef TYPE_1__ js_Ast ;
 int in (int) ;
 int nl () ;
 int pargs (int,TYPE_1__*) ;
 int parray (int,TYPE_1__*) ;
 int pbin (int,int,TYPE_1__*,char*) ;
 int pc (char) ;
 int pobject (int,TYPE_1__*) ;
 int prec (int) ;
 int pregexp (char*,double) ;
 int printf (char*,double) ;
 int ps (char*) ;
 int pstmlist (int,TYPE_1__*) ;
 int pstr (char*) ;
 int puna (int,int,TYPE_1__*,char*,char*) ;
 int sp () ;

__attribute__((used)) static void pexpi(int d, int p, js_Ast *exp)
{
 int tp, paren;

 if (!exp) return;

 tp = prec(exp->type);
 paren = 0;
 if (tp < p) {
  pc('(');
  paren = 1;
 }
 p = tp;

 switch (exp->type) {
 case 192: ps(exp->string); break;
 case 163: ps(exp->string); break;
 case 147: printf("%.9g", exp->number); break;
 case 135: pstr(exp->string); break;
 case 140: pregexp(exp->string, exp->number); break;

 case 130: break;
 case 148: ps("null"); break;
 case 132: ps("true"); break;
 case 167: ps("false"); break;
 case 133: ps("this"); break;

 case 146: pobject(d, exp->a); break;
 case 190: parray(d, exp->a); break;

 case 170: puna(d, p, exp, "delete ", ""); break;
 case 128: puna(d, p, exp, "void ", ""); break;
 case 131: puna(d, p, exp, "typeof ", ""); break;
 case 141: puna(d, p, exp, "++", ""); break;
 case 142: puna(d, p, exp, "--", ""); break;
 case 143: puna(d, p, exp, "", "++"); break;
 case 144: puna(d, p, exp, "", "--"); break;
 case 145: puna(d, p, exp, "+", ""); break;
 case 150: puna(d, p, exp, "-", ""); break;
 case 176: puna(d, p, exp, "~", ""); break;
 case 157: puna(d, p, exp, "!", ""); break;

 case 156: pbin(d, p, exp, "||"); break;
 case 158: pbin(d, p, exp, "&&"); break;
 case 175: pbin(d, p, exp, "|"); break;
 case 174: pbin(d, p, exp, "^"); break;
 case 177: pbin(d, p, exp, "&"); break;
 case 168: pbin(d, p, exp, "=="); break;
 case 151: pbin(d, p, exp, "!="); break;
 case 137: pbin(d, p, exp, "==="); break;
 case 136: pbin(d, p, exp, "!=="); break;
 case 155: pbin(d, p, exp, "<"); break;
 case 164: pbin(d, p, exp, ">"); break;
 case 159: pbin(d, p, exp, "<="); break;
 case 165: pbin(d, p, exp, ">="); break;
 case 162: pbin(d, p, exp, "in"); break;
 case 139: pbin(d, p, exp, "<<"); break;
 case 138: pbin(d, p, exp, ">>"); break;
 case 129: pbin(d, p, exp, ">>>"); break;
 case 191: pbin(d, p, exp, "+"); break;
 case 134: pbin(d, p, exp, "-"); break;
 case 152: pbin(d, p, exp, "*"); break;
 case 169: pbin(d, p, exp, "/"); break;
 case 153: pbin(d, p, exp, "%"); break;
 case 189: pbin(d, p, exp, "="); break;
 case 182: pbin(d, p, exp, "*="); break;
 case 184: pbin(d, p, exp, "/="); break;
 case 183: pbin(d, p, exp, "%="); break;
 case 188: pbin(d, p, exp, "+="); break;
 case 179: pbin(d, p, exp, "-="); break;
 case 181: pbin(d, p, exp, "<<="); break;
 case 180: pbin(d, p, exp, ">>="); break;
 case 178: pbin(d, p, exp, ">>>="); break;
 case 187: pbin(d, p, exp, "&="); break;
 case 185: pbin(d, p, exp, "^="); break;
 case 186: pbin(d, p, exp, "|="); break;

 case 160:
  pexpi(d, p, exp->a);
  ps(" instanceof ");
  pexpi(d, p, exp->b);
  break;

 case 172:
  pexpi(d, p, exp->a);
  pc(','); sp();
  pexpi(d, p, exp->b);
  break;

 case 171:
  pexpi(d, p, exp->a);
  sp(); pc('?'); sp();
  pexpi(d, p, exp->b);
  sp(); pc(':'); sp();
  pexpi(d, p, exp->c);
  break;

 case 161:
  pexpi(d, p, exp->a);
  pc('[');
  pexpi(d, 0, exp->b);
  pc(']');
  break;

 case 154:
  pexpi(d, p, exp->a);
  pc('.');
  pexpi(d, 0, exp->b);
  break;

 case 173:
  pexpi(d, p, exp->a);
  pc('(');
  pargs(d, exp->b);
  pc(')');
  break;

 case 149:
  ps("new ");
  pexpi(d, p, exp->a);
  pc('(');
  pargs(d, exp->b);
  pc(')');
  break;

 case 166:
  if (p == 0) pc('(');
  ps("function ");
  pexpi(d, 0, exp->a);
  pc('(');
  pargs(d, exp->b);
  pc(')'); sp(); pc('{'); nl();
  pstmlist(d, exp->c);
  in(d); pc('}');
  if (p == 0) pc(')');
  break;

 default:
  ps("<UNKNOWN>");
  break;
 }

 if (paren) pc(')');
}

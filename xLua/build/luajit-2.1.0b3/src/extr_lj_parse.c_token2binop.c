
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LexToken ;
typedef int BinOpr ;


 int OPR_ADD ;
 int OPR_AND ;
 int OPR_CONCAT ;
 int OPR_DIV ;
 int OPR_EQ ;
 int OPR_GE ;
 int OPR_GT ;
 int OPR_LE ;
 int OPR_LT ;
 int OPR_MOD ;
 int OPR_MUL ;
 int OPR_NE ;
 int OPR_NOBINOPR ;
 int OPR_OR ;
 int OPR_POW ;
 int OPR_SUB ;
__attribute__((used)) static BinOpr token2binop(LexToken tok)
{
  switch (tok) {
  case '+': return OPR_ADD;
  case '-': return OPR_SUB;
  case '*': return OPR_MUL;
  case '/': return OPR_DIV;
  case '%': return OPR_MOD;
  case '^': return OPR_POW;
  case 133: return OPR_CONCAT;
  case 129: return OPR_NE;
  case 132: return OPR_EQ;
  case '<': return OPR_LT;
  case 130: return OPR_LE;
  case '>': return OPR_GT;
  case 131: return OPR_GE;
  case 134: return OPR_AND;
  case 128: return OPR_OR;
  default: return OPR_NOBINOPR;
  }
}

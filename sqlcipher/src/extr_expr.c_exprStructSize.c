
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Expr ;


 int EP_Reduced ;
 int EP_TokenOnly ;
 int EXPR_FULLSIZE ;
 int EXPR_REDUCEDSIZE ;
 int EXPR_TOKENONLYSIZE ;
 scalar_t__ ExprHasProperty (int *,int ) ;

__attribute__((used)) static int exprStructSize(Expr *p){
  if( ExprHasProperty(p, EP_TokenOnly) ) return EXPR_TOKENONLYSIZE;
  if( ExprHasProperty(p, EP_Reduced) ) return EXPR_REDUCEDSIZE;
  return EXPR_FULLSIZE;
}

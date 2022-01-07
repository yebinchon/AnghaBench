
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LexState ;


 int TK_THEN ;
 int block (int *) ;
 int checknext (int *,int ) ;
 int cond (int *) ;
 int luaX_next (int *) ;

__attribute__((used)) static int test_then_block(LexState*ls){
int condexit;
luaX_next(ls);
condexit=cond(ls);
checknext(ls,TK_THEN);
block(ls);
return condexit;
}

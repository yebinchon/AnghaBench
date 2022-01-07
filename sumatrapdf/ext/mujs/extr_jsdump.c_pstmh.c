
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; } ;
typedef TYPE_1__ js_Ast ;


 scalar_t__ STM_BLOCK ;
 int nl () ;
 int pblock (int,TYPE_1__*) ;
 int pstm (int,TYPE_1__*) ;
 int sp () ;

__attribute__((used)) static void pstmh(int d, js_Ast *stm)
{
 if (stm->type == STM_BLOCK) {
  sp();
  pblock(d, stm);
 } else {
  nl();
  pstm(d+1, stm);
 }
}

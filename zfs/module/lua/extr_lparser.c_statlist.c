
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ token; } ;
struct TYPE_7__ {TYPE_1__ t; } ;
typedef TYPE_2__ LexState ;


 scalar_t__ TK_RETURN ;
 int block_follow (TYPE_2__*,int) ;
 int statement (TYPE_2__*) ;

__attribute__((used)) __attribute__((always_inline)) inline
static void statlist (LexState *ls) {

  while (!block_follow(ls, 1)) {
    if (ls->t.token == TK_RETURN) {
      statement(ls);
      return;
    }
    statement(ls);
  }
}

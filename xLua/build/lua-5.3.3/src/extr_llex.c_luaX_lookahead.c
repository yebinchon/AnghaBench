
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ token; int seminfo; } ;
struct TYPE_6__ {TYPE_1__ lookahead; } ;
typedef TYPE_2__ LexState ;


 scalar_t__ TK_EOS ;
 scalar_t__ llex (TYPE_2__*,int *) ;
 int lua_assert (int) ;

int luaX_lookahead (LexState *ls) {
  lua_assert(ls->lookahead.token == TK_EOS);
  ls->lookahead.token = llex(ls, &ls->lookahead.seminfo);
  return ls->lookahead.token;
}

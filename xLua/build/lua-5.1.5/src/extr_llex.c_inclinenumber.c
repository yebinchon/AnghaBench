
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int current; scalar_t__ linenumber; } ;
typedef TYPE_1__ LexState ;


 scalar_t__ MAX_INT ;
 scalar_t__ currIsNewline (TYPE_1__*) ;
 int luaX_syntaxerror (TYPE_1__*,char*) ;
 int lua_assert (scalar_t__) ;
 int next (TYPE_1__*) ;

__attribute__((used)) static void inclinenumber (LexState *ls) {
  int old = ls->current;
  lua_assert(currIsNewline(ls));
  next(ls);
  if (currIsNewline(ls) && ls->current != old)
    next(ls);
  if (++ls->linenumber >= MAX_INT)
    luaX_syntaxerror(ls, "chunk has too many lines");
}

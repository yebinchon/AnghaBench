
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int l_noret ;
struct TYPE_4__ {int L; int linenumber; int source; } ;
typedef TYPE_1__ LexState ;


 int LUA_ERRSYNTAX ;
 int luaD_throw (int ,int ) ;
 char* luaG_addinfo (int ,char const*,int ,int ) ;
 int luaO_pushfstring (int ,char*,char const*,int ) ;
 int txtToken (TYPE_1__*,int) ;

__attribute__((used)) static l_noret lexerror (LexState *ls, const char *msg, int token) {
  msg = luaG_addinfo(ls->L, msg, ls->source, ls->linenumber);
  if (token)
    luaO_pushfstring(ls->L, "%s near %s", msg, txtToken(ls, token));
  luaD_throw(ls->L, LUA_ERRSYNTAX);
}

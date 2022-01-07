
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int L; } ;
typedef TYPE_1__ LexState ;


 int FIRST_RESERVED ;
 int TK_EOS ;
 int cast_uchar (int) ;
 char const* luaO_pushfstring (int ,char*,...) ;
 char** luaX_tokens ;
 int lua_assert (int) ;

const char *luaX_token2str (LexState *ls, int token) {
  if (token < FIRST_RESERVED) {
    lua_assert(token == cast_uchar(token));
    return luaO_pushfstring(ls->L, "'%c'", token);
  }
  else {
    const char *s = luaX_tokens[token - FIRST_RESERVED];
    if (token < TK_EOS)
      return luaO_pushfstring(ls->L, "'%s'", s);
    else
      return s;
  }
}

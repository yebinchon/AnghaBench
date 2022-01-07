
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int buff; int L; } ;
typedef TYPE_1__ LexState ;


 int LUA_QS ;



 char const* luaO_pushfstring (int ,int ,int ) ;
 char const* luaX_token2str (TYPE_1__*,int) ;
 int luaZ_buffer (int ) ;
 int save (TYPE_1__*,char) ;

__attribute__((used)) static const char *txtToken (LexState *ls, int token) {
  switch (token) {
    case 130:
    case 128:
    case 129:
      save(ls, '\0');
      return luaO_pushfstring(ls->L, LUA_QS, luaZ_buffer(ls->buff));
    default:
      return luaX_token2str(ls, token);
  }
}

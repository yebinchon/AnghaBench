
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int l_noret ;
struct TYPE_5__ {int L; } ;
typedef TYPE_1__ LexState ;


 int luaO_pushfstring (int ,char*,int ) ;
 int luaX_syntaxerror (TYPE_1__*,int ) ;
 int luaX_token2str (TYPE_1__*,int) ;

__attribute__((used)) static l_noret error_expected (LexState *ls, int token) {
  luaX_syntaxerror(ls,
      luaO_pushfstring(ls->L, "%s expected", luaX_token2str(ls, token)));
}

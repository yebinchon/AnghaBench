
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
typedef int ZIO ;
struct TYPE_5__ {int token; } ;
struct TYPE_6__ {scalar_t__ token; } ;
struct TYPE_7__ {int current; int linenumber; int lastline; int buff; int * L; int envn; int * source; int * fs; int * z; TYPE_1__ lookahead; TYPE_2__ t; } ;
typedef int TString ;
typedef TYPE_3__ LexState ;


 int LUA_ENV ;
 int LUA_MINBUFFER ;
 int TK_EOS ;
 int luaS_newliteral (int *,int ) ;
 int luaZ_resizebuffer (int *,int ,int ) ;

void luaX_setinput (lua_State *L, LexState *ls, ZIO *z, TString *source,
                    int firstchar) {
  ls->t.token = 0;
  ls->L = L;
  ls->current = firstchar;
  ls->lookahead.token = TK_EOS;
  ls->z = z;
  ls->fs = ((void*)0);
  ls->linenumber = 1;
  ls->lastline = 1;
  ls->source = source;
  ls->envn = luaS_newliteral(L, LUA_ENV);
  luaZ_resizebuffer(ls->L, ls->buff, LUA_MINBUFFER);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
typedef int ZIO ;
struct TYPE_5__ {int token; } ;
struct TYPE_6__ {char decpoint; int linenumber; int lastline; int buff; int * L; int * source; int * fs; int * z; TYPE_1__ lookahead; } ;
typedef int TString ;
typedef TYPE_2__ LexState ;


 int TK_EOS ;
 int luaZ_resizebuffer (int *,int ,int) ;
 int next (TYPE_2__*) ;

__attribute__((used)) static void luaX_setinput(lua_State*L,LexState*ls,ZIO*z,TString*source){
ls->decpoint='.';
ls->L=L;
ls->lookahead.token=TK_EOS;
ls->z=z;
ls->fs=((void*)0);
ls->linenumber=1;
ls->lastline=1;
ls->source=source;
luaZ_resizebuffer(ls->L,ls->buff,32);
next(ls);
}

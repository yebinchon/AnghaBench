
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int L; } ;
typedef TYPE_1__ LexState ;


 scalar_t__ iscntrl (int) ;
 char const* luaO_pushfstring (int ,char*,int) ;
 char const** luaX_tokens ;

__attribute__((used)) static const char*luaX_token2str(LexState*ls,int token){
if(token<257){
return(iscntrl(token))?luaO_pushfstring(ls->L,"char(%d)",token):
luaO_pushfstring(ls->L,"%c",token);
}
else
return luaX_tokens[token-257];
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int token; } ;
struct TYPE_6__ {TYPE_1__ t; } ;
typedef TYPE_2__ LexState ;


 int luaX_lexerror (TYPE_2__*,char const*,int ) ;

__attribute__((used)) static void luaX_syntaxerror(LexState*ls,const char*msg){
luaX_lexerror(ls,msg,ls->t.token);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int current; int linenumber; } ;
typedef TYPE_1__ LexState ;


 int INT_MAX ;
 scalar_t__ currIsNewline (TYPE_1__*) ;
 int luaX_syntaxerror (TYPE_1__*,char*) ;
 int next (TYPE_1__*) ;

__attribute__((used)) static void inclinenumber(LexState*ls){
int old=ls->current;
next(ls);
if(currIsNewline(ls)&&ls->current!=old)
next(ls);
if(++ls->linenumber>=(INT_MAX-2))
luaX_syntaxerror(ls,"chunk has too many lines");
}

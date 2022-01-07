
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buff; } ;
typedef TYPE_1__ LexState ;


 char* luaZ_buffer (int ) ;
 size_t luaZ_bufflen (int ) ;

__attribute__((used)) static void buffreplace(LexState*ls,char from,char to){
size_t n=luaZ_bufflen(ls->buff);
char*p=luaZ_buffer(ls->buff);
while(n--)
if(p[n]==from)p[n]=to;
}

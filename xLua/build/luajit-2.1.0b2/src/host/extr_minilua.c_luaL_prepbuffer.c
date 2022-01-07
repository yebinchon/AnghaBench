
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* buffer; } ;
typedef TYPE_1__ luaL_Buffer ;


 int adjuststack (TYPE_1__*) ;
 scalar_t__ emptybuffer (TYPE_1__*) ;

__attribute__((used)) static char*luaL_prepbuffer(luaL_Buffer*B){
if(emptybuffer(B))
adjuststack(B);
return B->buffer;
}

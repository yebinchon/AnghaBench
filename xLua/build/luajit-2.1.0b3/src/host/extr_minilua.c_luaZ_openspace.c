
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {size_t buffsize; char* buffer; } ;
typedef TYPE_1__ Mbuffer ;


 int luaZ_resizebuffer (int *,TYPE_1__*,size_t) ;

__attribute__((used)) static char*luaZ_openspace(lua_State*L,Mbuffer*buff,size_t n){
if(n>buff->buffsize){
if(n<32)n=32;
luaZ_resizebuffer(L,buff,n);
}
return buff->buffer;
}

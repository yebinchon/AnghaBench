
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lvl; int buffer; int p; int L; } ;
typedef TYPE_1__ luaL_Buffer ;


 size_t bufflen (TYPE_1__*) ;
 int lua_pushlstring (int ,int ,size_t) ;

__attribute__((used)) static int emptybuffer(luaL_Buffer*B){
size_t l=bufflen(B);
if(l==0)return 0;
else{
lua_pushlstring(B->L,B->buffer,l);
B->p=B->buffer;
B->lvl++;
return 1;
}
}

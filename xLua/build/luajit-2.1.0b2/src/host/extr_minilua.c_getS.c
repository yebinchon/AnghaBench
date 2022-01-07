
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {size_t size; char const* s; } ;
typedef TYPE_1__ LoadS ;



__attribute__((used)) static const char*getS(lua_State*L,void*ud,size_t*size){
LoadS*ls=(LoadS*)ud;
(void)L;
if(ls->size==0)return ((void*)0);
*size=ls->size;
ls->size=0;
return ls->s;
}

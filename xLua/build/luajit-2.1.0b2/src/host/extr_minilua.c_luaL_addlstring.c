
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int luaL_Buffer ;


 int luaL_addchar (int *,int ) ;

__attribute__((used)) static void luaL_addlstring(luaL_Buffer*B,const char*s,size_t l){
while(l--)
luaL_addchar(B,*s++);
}

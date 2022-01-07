
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int luaL_Buffer ;
typedef int UC ;


 int luaL_addchar (int *,char) ;
 char* qpbase ;

__attribute__((used)) static void qpquote(UC c, luaL_Buffer *buffer)
{
    luaL_addchar(buffer, '=');
    luaL_addchar(buffer, qpbase[c >> 4]);
    luaL_addchar(buffer, qpbase[c & 0x0F]);
}

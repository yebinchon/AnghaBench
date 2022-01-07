
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int extensions_manager_t ;
typedef int extension_t ;


 int LUA_END ;
 int assert (int) ;
 int lua_ExecuteFunction (int *,int *,char*,int ) ;

int lua_ExtensionActivate( extensions_manager_t *p_mgr, extension_t *p_ext )
{
    assert( p_mgr != ((void*)0) && p_ext != ((void*)0) );
    return lua_ExecuteFunction( p_mgr, p_ext, "activate", LUA_END );
}

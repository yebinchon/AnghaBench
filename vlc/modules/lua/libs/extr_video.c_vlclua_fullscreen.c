
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int lua_State ;


 int vlclua_error (int *) ;
 int * vlclua_get_vout_internal (int *) ;
 int vlclua_var_toggle_or_set (int *,int *,char*) ;
 int vout_Release (int *) ;

__attribute__((used)) static int vlclua_fullscreen( lua_State *L )
{
    int i_ret;

    vout_thread_t *p_vout = vlclua_get_vout_internal(L);
    if( !p_vout )
        return vlclua_error( L );

    i_ret = vlclua_var_toggle_or_set( L, p_vout, "fullscreen" );

    vout_Release(p_vout);
    return i_ret;
}

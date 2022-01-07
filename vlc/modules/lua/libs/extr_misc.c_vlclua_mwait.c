
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_interrupt_t ;
typedef int lua_State ;


 int llround (double) ;
 double luaL_checknumber (int *,int) ;
 int luaL_error (int *,char*) ;
 int vlc_interrupt_set (int *) ;
 int vlc_mwait_i11e (int ) ;
 int * vlclua_set_interrupt (int *) ;

__attribute__((used)) static int vlclua_mwait( lua_State *L )
{
    double f = luaL_checknumber( L, 1 );

    vlc_interrupt_t *oint = vlclua_set_interrupt( L );
    int ret = vlc_mwait_i11e( llround(f) );

    vlc_interrupt_set( oint );
    if( ret )
        return luaL_error( L, "Interrupted." );
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int f_float; int psz_string; int i_int; int b_bool; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int lua_State ;
typedef int lua_Number ;
typedef int lua_Integer ;


 int INT32_MAX ;
 int INT32_MIN ;


 int VLC_VAR_CLASS ;




 int lua_pushboolean (int *,int ) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushnumber (int *,int ) ;
 int lua_pushstring (int *,int ) ;
 int vlclua_error (int *) ;

__attribute__((used)) static int vlclua_pushvalue( lua_State *L, int i_type, vlc_value_t val )
{
    switch( i_type & VLC_VAR_CLASS )
    {
        case 132:
            lua_pushboolean( L, val.b_bool );
            break;
        case 130:
            if( sizeof( lua_Integer ) < sizeof( val.i_int ) &&
                ( val.i_int < INT32_MIN || INT32_MAX < val.i_int ) )
                lua_pushnumber( L, (lua_Number)val.i_int );
            else
                lua_pushinteger( L, val.i_int );
            break;
        case 129:
            lua_pushstring( L, val.psz_string );
            break;
        case 131:
            lua_pushnumber( L, val.f_float );
            break;
        case 133:
            vlclua_error( L );
            break;
        case 128:
        default:
            vlclua_error( L );
    }
    return 1;
}

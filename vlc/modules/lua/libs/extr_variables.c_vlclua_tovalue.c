
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* psz_string; void* f_float; void* i_int; int b_bool; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int lua_State ;
typedef void* lua_Number ;
typedef int lua_Integer ;
typedef void* int64_t ;


 void* INT32_MAX ;
 void* INT32_MIN ;


 int VLC_VAR_CLASS ;




 int llround (void*) ;
 int luaL_checkboolean (int *,int) ;
 void* luaL_checkinteger (int *,int) ;
 void* luaL_checknumber (int *,int) ;
 scalar_t__ luaL_checkstring (int *,int) ;
 int vlclua_error (int *) ;

__attribute__((used)) static int vlclua_tovalue( lua_State *L, int i_type, vlc_value_t *val )
{
    switch( i_type & VLC_VAR_CLASS )
    {
        case 128:
            break;
        case 132:
            val->b_bool = luaL_checkboolean( L, -1 );
            break;
        case 130:






            if( sizeof( lua_Integer ) < sizeof( val->i_int ) )
            {
                lua_Number f = luaL_checknumber( L, -1 );


                val->i_int = (int64_t)llround( f );
                if( INT32_MIN < val->i_int && val->i_int < INT32_MAX )
                    val->i_int = luaL_checkinteger( L, -1 );
            }
            else
                val->i_int = luaL_checkinteger( L, -1 );
            break;
        case 129:
            val->psz_string = (char*)luaL_checkstring( L, -1 );
            break;
        case 131:
            val->f_float = luaL_checknumber( L, -1 );
            break;
        case 133:
            vlclua_error( L );
            break;
        default:
            vlclua_error( L );
    }
    return 1;
}

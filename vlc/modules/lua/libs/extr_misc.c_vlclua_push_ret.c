
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int lua_pushnumber (int *,int) ;
 int lua_pushstring (int *,char*) ;
 char* vlc_strerror_c (int) ;

int vlclua_push_ret( lua_State *L, int i_error )
{
    lua_pushnumber( L, i_error );

    int err;

    switch( i_error )
    {
        case 128: err = 0; break;
        case 133: err = ENOMEM; break;
        case 129: err = ETIMEDOUT; break;
        case 135: err = EINVAL; break;
        case 132: err = ENOENT; break;
        case 131: err = ENOENT; break;
        case 130: err = ENOENT; break;
        case 134:
            lua_pushstring( L, "generic error" );
            return 2;
        default:
            lua_pushstring( L, "unknown error" );
            return 2;
    }

    lua_pushstring( L, vlc_strerror_c(err) );
    return 2;
}

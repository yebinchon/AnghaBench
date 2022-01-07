
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
typedef int lua_State ;
typedef int httpd_file_t ;
struct TYPE_3__ {int password; int * L; } ;
typedef TYPE_1__ httpd_file_sys_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (int *) ;
 int _ (int ) ;
 scalar_t__ asprintf (char**,int ,int ,int ) ;
 int free (int *) ;
 scalar_t__ lua_pcall (int *,int,int,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushstring (int *,char const*) ;
 int lua_pushvalue (int *,int) ;
 int lua_settop (int *,int) ;
 char* lua_tostring (int *,int) ;
 int msg_Err (int *,char*,char const*) ;
 int no_password_body ;
 int no_password_fmt ;
 int no_password_title ;
 int strlen (char*) ;
 int * vlclua_get_this (int *) ;
 int * vlclua_todata (int *,int,int*) ;

__attribute__((used)) static int vlclua_httpd_file_callback(
    httpd_file_sys_t *p_sys, httpd_file_t *p_file, uint8_t *psz_request,
    uint8_t **pp_data, int *pi_data )
{
    VLC_UNUSED(p_file);
    lua_State *L = p_sys->L;


    lua_pushvalue( L, 1 );
    lua_pushvalue( L, 2 );

    lua_pushstring( L, (const char *)psz_request );

    if( lua_pcall( L, 2, 1, 0 ) )
    {

        vlc_object_t *p_this = vlclua_get_this( L );
        const char *psz_err = lua_tostring( L, -1 );
        msg_Err( p_this, "Error while running the lua HTTPd file callback: %s",
                 psz_err );
        lua_settop( L, 2 );

        return VLC_EGENERIC;
    }

    *pp_data = vlclua_todata( L, -1, pi_data );
    if (!p_sys->password)
    {
        free(*pp_data);
        if (asprintf((char**)pp_data, no_password_fmt,
                _(no_password_title), _(no_password_body)) < 0) {
            *pi_data = 0;
        } else {
            *pi_data = strlen((char*)*pp_data);
        }
    }
    lua_pop( L, 1 );

    return VLC_SUCCESS;
}

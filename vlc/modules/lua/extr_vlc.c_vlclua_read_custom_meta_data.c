
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int lua_State ;
struct TYPE_3__ {int lock; scalar_t__ p_meta; } ;
typedef TYPE_1__ input_item_t ;


 int lua_getfield (int *,int,char*) ;
 int lua_isstring (int *,int) ;
 scalar_t__ lua_istable (int *,int) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 char* lua_tostring (int *,int) ;
 int msg_Err (int *,char*) ;
 int vlc_meta_AddExtra (scalar_t__,char const*,char const*) ;
 scalar_t__ vlc_meta_New () ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void vlclua_read_custom_meta_data( vlc_object_t *p_this, lua_State *L,
                                     input_item_t *p_input )
{

    vlc_mutex_lock( &p_input->lock );

    if( !p_input->p_meta )
        p_input->p_meta = vlc_meta_New();


    lua_getfield( L, -1, "meta" );

    if( lua_istable( L, -1 ) )
    {
        lua_pushnil( L );

        while( lua_next( L, -2 ) )
        {

            if( !lua_isstring( L, -2 ) || !lua_isstring( L, -1 ) )
            {
                msg_Err( p_this, "'meta' keys and values must be strings");
                lua_pop( L, 1 );
                continue;
            }
            const char *psz_key = lua_tostring( L, -2 );
            const char *psz_value = lua_tostring( L, -1 );

            vlc_meta_AddExtra( p_input->p_meta, psz_key, psz_value );

            lua_pop( L, 1 );
        }
    }
    lua_pop( L, 1 );


    vlc_mutex_unlock( &p_input->lock );
}

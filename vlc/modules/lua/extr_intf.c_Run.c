
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_6__ {int psz_filename; int * L; } ;
typedef TYPE_2__ intf_sys_t ;


 int VLC_OBJECT (TYPE_1__*) ;
 int lua_gettop (int *) ;
 int lua_pop (int *,int) ;
 int lua_tostring (int *,int ) ;
 int msg_Err (TYPE_1__*,char*,int ,int ) ;
 scalar_t__ vlclua_dofile (int ,int *,int ) ;

__attribute__((used)) static void *Run( void *data )
{
    intf_thread_t *p_intf = data;
    intf_sys_t *p_sys = p_intf->p_sys;
    lua_State *L = p_sys->L;

    if( vlclua_dofile( VLC_OBJECT(p_intf), L, p_sys->psz_filename ) )
    {
        msg_Err( p_intf, "Error loading script %s: %s", p_sys->psz_filename,
                 lua_tostring( L, lua_gettop( L ) ) );
        lua_pop( L, 1 );
    }
    return ((void*)0);
}

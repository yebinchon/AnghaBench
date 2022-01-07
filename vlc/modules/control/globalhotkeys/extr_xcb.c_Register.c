
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_6__ {int i_map; int root; int p_connection; TYPE_3__* p_map; } ;
typedef TYPE_2__ intf_sys_t ;
struct TYPE_7__ {scalar_t__* p_keys; int i_modifier; } ;
typedef TYPE_3__ hotkey_mapping_t ;


 int XCB_GRAB_MODE_ASYNC ;
 scalar_t__ XCB_NO_SYMBOL ;
 int xcb_grab_key (int ,int,int ,int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void Register( intf_thread_t *p_intf )
{
    intf_sys_t *p_sys = p_intf->p_sys;

    for( int i = 0; i < p_sys->i_map; i++ )
    {
        const hotkey_mapping_t *p_map = &p_sys->p_map[i];
        for( int j = 0; p_map->p_keys[j] != XCB_NO_SYMBOL; j++ )
        {
            xcb_grab_key( p_sys->p_connection, 1, p_sys->root,
                          p_map->i_modifier, p_map->p_keys[j],
                          XCB_GRAB_MODE_ASYNC, XCB_GRAB_MODE_ASYNC );
        }
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int xcb_keysym_t ;
typedef int xcb_keycode_t ;
typedef int uint_fast32_t ;
typedef int p_x11_modifier_ignored ;
struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_10__ {int i_map; TYPE_3__* p_map; int p_symbols; int p_connection; } ;
typedef TYPE_2__ intf_sys_t ;
struct TYPE_11__ {int* p_keys; unsigned int i_modifier; int i_vlc; } ;
typedef TYPE_3__ hotkey_mapping_t ;


 unsigned int GetModifier (int ,int ,int const) ;
 int GetX11Key (int) ;
 unsigned int GetX11Modifier (int ,int ,int) ;
 int KEY_MODIFIER ;



 int free (int*) ;
 TYPE_3__* realloc (TYPE_3__*,int) ;
 char** vlc_actions_get_key_names (TYPE_1__*) ;
 size_t vlc_actions_get_keycodes (TYPE_1__*,char const* const,int,int**) ;
 int* xcb_key_symbols_get_keycode (int ,int ) ;

__attribute__((used)) static bool Mapping( intf_thread_t *p_intf )
{
    static const xcb_keysym_t p_x11_modifier_ignored[] = {
        0,
        129,
        128,
        130,
    };

    intf_sys_t *p_sys = p_intf->p_sys;
    bool active = 0;

    p_sys->i_map = 0;
    p_sys->p_map = ((void*)0);


    for( const char* const* ppsz_keys = vlc_actions_get_key_names( p_intf );
         *ppsz_keys != ((void*)0); ppsz_keys++ )
    {
        uint_fast32_t *p_keys;
        size_t i_nb_keys = vlc_actions_get_keycodes( p_intf, *ppsz_keys, 1,
                                                     &p_keys );

        for( size_t i = 0; i < i_nb_keys; ++i )
        {
            uint_fast32_t i_vlc_key = p_keys[i];
            const unsigned i_modifier = GetX11Modifier( p_sys->p_connection,
                    p_sys->p_symbols, i_vlc_key & KEY_MODIFIER );

            const size_t max = sizeof(p_x11_modifier_ignored) /
                    sizeof(*p_x11_modifier_ignored);
            for( unsigned int j = 0; j < max; j++ )
            {
                const unsigned i_ignored = GetModifier( p_sys->p_connection,
                        p_sys->p_symbols, p_x11_modifier_ignored[j] );
                if( j != 0 && i_ignored == 0)
                    continue;

                xcb_keycode_t *keycodes = xcb_key_symbols_get_keycode(
                    p_sys->p_symbols, GetX11Key( i_vlc_key & ~KEY_MODIFIER ) );

                if( keycodes == ((void*)0) )
                    break;

                hotkey_mapping_t *p_map = realloc( p_sys->p_map,
                                  sizeof(*p_sys->p_map) * (p_sys->i_map+1) );
                if( !p_map )
                {
                    free( keycodes );
                    break;
                }
                p_sys->p_map = p_map;
                p_map += p_sys->i_map;
                p_sys->i_map++;

                p_map->p_keys = keycodes;
                p_map->i_modifier = i_modifier|i_ignored;
                p_map->i_vlc = i_vlc_key;
                active = 1;
            }
        }
        free( p_keys );
    }
    return active;
}

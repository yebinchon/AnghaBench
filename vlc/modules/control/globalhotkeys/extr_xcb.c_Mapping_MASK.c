#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_keysym_t ;
typedef  int xcb_keycode_t ;
typedef  int uint_fast32_t ;
typedef  int /*<<< orphan*/  p_x11_modifier_ignored ;
struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ intf_thread_t ;
struct TYPE_10__ {int i_map; TYPE_3__* p_map; int /*<<< orphan*/  p_symbols; int /*<<< orphan*/  p_connection; } ;
typedef  TYPE_2__ intf_sys_t ;
struct TYPE_11__ {int* p_keys; unsigned int i_modifier; int i_vlc; } ;
typedef  TYPE_3__ hotkey_mapping_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int KEY_MODIFIER ; 
#define  XK_Caps_Lock 130 
#define  XK_Num_Lock 129 
#define  XK_Scroll_Lock 128 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 TYPE_3__* FUNC4 (TYPE_3__*,int) ; 
 char** FUNC5 (TYPE_1__*) ; 
 size_t FUNC6 (TYPE_1__*,char const* const,int,int**) ; 
 int* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8( intf_thread_t *p_intf )
{
    static const xcb_keysym_t p_x11_modifier_ignored[] = {
        0,
        XK_Num_Lock,
        XK_Scroll_Lock,
        XK_Caps_Lock,
    };

    intf_sys_t *p_sys = p_intf->p_sys;
    bool active = false;

    p_sys->i_map = 0;
    p_sys->p_map = NULL;

    /* Registering of Hotkeys */
    for( const char* const* ppsz_keys = FUNC5( p_intf );
         *ppsz_keys != NULL; ppsz_keys++ )
    {
        uint_fast32_t *p_keys;
        size_t i_nb_keys = FUNC6( p_intf, *ppsz_keys, true,
                                                     &p_keys );

        for( size_t i = 0; i < i_nb_keys; ++i )
        {
            uint_fast32_t i_vlc_key = p_keys[i];
            const unsigned i_modifier = FUNC2( p_sys->p_connection,
                    p_sys->p_symbols, i_vlc_key & KEY_MODIFIER );

            const size_t max = sizeof(p_x11_modifier_ignored) /
                    sizeof(*p_x11_modifier_ignored);
            for( unsigned int j = 0; j < max; j++ )
            {
                const unsigned i_ignored = FUNC0( p_sys->p_connection,
                        p_sys->p_symbols, p_x11_modifier_ignored[j] );
                if( j != 0 && i_ignored == 0)
                    continue;

                xcb_keycode_t *keycodes = FUNC7(
                    p_sys->p_symbols, FUNC1( i_vlc_key & ~KEY_MODIFIER ) );

                if( keycodes == NULL )
                    break;

                hotkey_mapping_t *p_map = FUNC4( p_sys->p_map,
                                  sizeof(*p_sys->p_map) * (p_sys->i_map+1) );
                if( !p_map )
                {
                    FUNC3( keycodes );
                    break;
                }
                p_sys->p_map = p_map;
                p_map += p_sys->i_map;
                p_sys->i_map++;

                p_map->p_keys = keycodes;
                p_map->i_modifier = i_modifier|i_ignored;
                p_map->i_vlc = i_vlc_key;
                active = true;
            }
        }
        FUNC3( p_keys );
    }
    return active;
}
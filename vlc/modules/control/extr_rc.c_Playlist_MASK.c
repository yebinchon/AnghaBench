#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__* psz_string; } ;
typedef  TYPE_2__ vlc_value_t ;
typedef  int /*<<< orphan*/  vlc_playlist_t ;
struct TYPE_9__ {TYPE_1__* p_sys; } ;
typedef  TYPE_3__ intf_thread_t ;
typedef  int /*<<< orphan*/  input_item_t ;
typedef  enum vlc_playlist_playback_repeat { ____Placeholder_vlc_playlist_playback_repeat } vlc_playlist_playback_repeat ;
typedef  enum vlc_playlist_playback_order { ____Placeholder_vlc_playlist_playback_order } vlc_playlist_playback_order ;
struct TYPE_7__ {int /*<<< orphan*/ * playlist; } ;

/* Variables and functions */
 int VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL ; 
 int VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM ; 
 int VLC_PLAYLIST_PLAYBACK_REPEAT_ALL ; 
 int VLC_PLAYLIST_PLAYBACK_REPEAT_CURRENT ; 
 int VLC_PLAYLIST_PLAYBACK_REPEAT_NONE ; 
 int VLC_SUCCESS ; 
 char* FUNC0 (char*) ; 
 long long FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,size_t) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC18(intf_thread_t *intf, char const *psz_cmd,
                     vlc_value_t newval)
{
    vlc_playlist_t *playlist = intf->p_sys->playlist;

    FUNC13(playlist);

    /* Parse commands that require a playlist */
    if( !FUNC5( psz_cmd, "repeat" ) )
    {
        bool b_update = true;
        enum vlc_playlist_playback_repeat repeat_mode =
            FUNC11(playlist);
        bool b_value = repeat_mode == VLC_PLAYLIST_PLAYBACK_REPEAT_CURRENT;

        if( FUNC6( newval.psz_string ) > 0 )
        {
            if ( ( !FUNC7( newval.psz_string, "on", 2 )  &&  b_value ) ||
                 ( !FUNC7( newval.psz_string, "off", 3 ) && !b_value ) )
            {
                b_update = false;
            }
        }

        if ( b_update )
        {
            b_value = !b_value;
            repeat_mode = b_value
                ? VLC_PLAYLIST_PLAYBACK_REPEAT_CURRENT
                : VLC_PLAYLIST_PLAYBACK_REPEAT_NONE;
            FUNC16(playlist, repeat_mode);
        }
        FUNC3(intf, "Setting repeat to %s", b_value ? "true" : "false");
    }
    else if( !FUNC5( psz_cmd, "loop" ) )
    {
        bool b_update = true;
        enum vlc_playlist_playback_repeat repeat_mode =
            FUNC11(playlist);
        bool b_value = repeat_mode == VLC_PLAYLIST_PLAYBACK_REPEAT_ALL;

        if( FUNC6( newval.psz_string ) > 0 )
        {
            if ( ( !FUNC7( newval.psz_string, "on", 2 )  &&  b_value ) ||
                 ( !FUNC7( newval.psz_string, "off", 3 ) && !b_value ) )
            {
                b_update = false;
            }
        }

        if ( b_update )
        {
            b_value = !b_value;
            repeat_mode = b_value
                ? VLC_PLAYLIST_PLAYBACK_REPEAT_ALL
                : VLC_PLAYLIST_PLAYBACK_REPEAT_NONE;
            FUNC16(playlist, repeat_mode);
        }
        FUNC3(intf, "Setting loop to %s", b_value ? "true" : "false");
    }
    else if( !FUNC5( psz_cmd, "random" ) )
    {
        bool b_update = true;
        enum vlc_playlist_playback_order order_mode =
            FUNC10(playlist);
        bool b_value = order_mode == VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM;

        if( FUNC6( newval.psz_string ) > 0 )
        {
            if ( ( !FUNC7( newval.psz_string, "on", 2 )  &&  b_value ) ||
                 ( !FUNC7( newval.psz_string, "off", 3 ) && !b_value ) )
            {
                b_update = false;
            }
        }

        if ( b_update )
        {
            b_value = !b_value;
            order_mode = b_value
                ? VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM
                : VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL;
            FUNC15(playlist, order_mode);
        }
        FUNC3(intf, "Setting random to %s", b_value ? "true" : "false");
    }
    else if (!FUNC5( psz_cmd, "goto" ) )
    {
        long long llindex = FUNC1(newval.psz_string);
        size_t index = (size_t)llindex;
        size_t count = FUNC9(playlist);
        if (llindex < 0)
            FUNC3(intf, FUNC0("Error: `goto' needs an argument greater or equal to zero."));
        else if (index < count)
            FUNC14(playlist, index);
        else
            FUNC3(intf,
                      FUNC8("Playlist has only %zu element",
                                   "Playlist has only %zu elements", count),
                      count);
    }
    else if ((!FUNC5(psz_cmd, "add") || !FUNC5(psz_cmd, "enqueue")) &&
             newval.psz_string && *newval.psz_string)
    {
        input_item_t *p_item = FUNC4( newval.psz_string );

        if( p_item )
        {
            FUNC3(intf, "Trying to %s %s to playlist.", psz_cmd,
                      newval.psz_string);

            size_t count = FUNC9(playlist);
            int ret = FUNC12(playlist, count, p_item);
            FUNC2(p_item);
            if (ret != VLC_SUCCESS)
                goto end;

            if (!FUNC5(psz_cmd, "add"))
                FUNC14(playlist, count);
        }
    }
    /*
     * sanity check
     */
    else
        FUNC3(intf, "unknown command!");

end:
    FUNC17(playlist);
}
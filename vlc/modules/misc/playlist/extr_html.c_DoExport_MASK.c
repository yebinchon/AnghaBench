#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  vlc_playlist_item_t ;
struct vlc_playlist_export {int /*<<< orphan*/  file; int /*<<< orphan*/  playlist_view; } ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,size_t) ; 
 char* FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10( struct vlc_playlist_export *p_export )
{
    /* Go through the playlist and add items */
    size_t count = FUNC7(p_export->playlist_view);
    for( size_t i = 0; i < count; ++i )
    {
        vlc_playlist_item_t *item =
            FUNC8(p_export->playlist_view, i);

        input_item_t *media = FUNC6(item);

        char* psz_name = NULL;
        char *psz_tmp = FUNC5(media);
        if( psz_tmp )
            psz_name = FUNC9( psz_tmp );
        FUNC2( psz_tmp );

        if( psz_name )
        {
            char* psz_artist = NULL;
            psz_tmp = FUNC3(media);
            if( psz_tmp )
                psz_artist = FUNC9( psz_tmp );
            FUNC2( psz_tmp );

            vlc_tick_t i_duration = FUNC4(media);
            int min = FUNC0( i_duration ) / 60;
            int sec = FUNC0( i_duration ) - min * 60;

            // Print the artist if we have one
            if( psz_artist && *psz_artist )
                FUNC1( p_export->file, "    <li>%s - %s (%02d:%02d)</li>\n", psz_artist, psz_name, min, sec );
            else
                FUNC1( p_export->file, "    <li>%s (%2d:%2d)</li>\n", psz_name, min, sec);

            FUNC2( psz_artist );
        }
        FUNC2( psz_name );
    }
}
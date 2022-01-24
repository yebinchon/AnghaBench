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
typedef  int /*<<< orphan*/  vlc_playlist_item_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct vlc_playlist_export {int /*<<< orphan*/  file; int /*<<< orphan*/  playlist_view; } ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

int FUNC5( vlc_object_t *p_this )
{
    struct vlc_playlist_export *p_export = (struct vlc_playlist_export *) p_this;

    /* write XSPF XML header */
    FUNC0( p_export->file, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" );
    FUNC0( p_export->file,
             "<playlist xmlns=\"http://xspf.org/ns/0/\" " \
              "xmlns:vlc=\"http://www.videolan.org/vlc/playlist/ns/0/\" " \
              "version=\"1\">\n" );

    FUNC0( p_export->file, "\t<trackList>\n" );
    size_t count = FUNC2(p_export->playlist_view);
    for( size_t i = 0; i < count; ++i )
    {
        vlc_playlist_item_t *item =
            FUNC3(p_export->playlist_view, i);
        input_item_t *media = FUNC1(item);

        FUNC4(media, p_export->file, i);
    }

    FUNC0( p_export->file, "\t</trackList>\n" );

    /* close the header elements */
    FUNC0( p_export->file, "</playlist>\n" );

    return VLC_SUCCESS;
}
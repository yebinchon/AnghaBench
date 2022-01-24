#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* psz_name; int /*<<< orphan*/  lock; scalar_t__ p_meta; } ;
typedef  TYPE_1__ input_item_t ;

/* Variables and functions */
 char* FUNC0 (char const*,char const*,char const*,char const*,char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  vlc_meta_Album ; 
 int /*<<< orphan*/  vlc_meta_Artist ; 
 int /*<<< orphan*/  vlc_meta_ArtworkURL ; 
 int /*<<< orphan*/  vlc_meta_Date ; 
 char* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  vlc_meta_Title ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC6( input_item_t *p_item )
{
    char* psz_path = NULL;
    const char *psz_artist;
    const char *psz_album;
    const char *psz_arturl;
    const char *psz_title;
    const char *psz_date;

    FUNC4( &p_item->lock );

    if( !p_item->p_meta )
        p_item->p_meta = FUNC3();
    if( !p_item->p_meta )
        goto end;

    psz_artist = FUNC2( p_item->p_meta, vlc_meta_Artist );
    psz_album = FUNC2( p_item->p_meta, vlc_meta_Album );
    psz_arturl = FUNC2( p_item->p_meta, vlc_meta_ArtworkURL );
    psz_title = FUNC2( p_item->p_meta, vlc_meta_Title );
    psz_date = FUNC2( p_item->p_meta, vlc_meta_Date );
    if( !psz_title )
        psz_title = p_item->psz_name;

    if( (FUNC1(psz_artist) || FUNC1(psz_album) ) && !psz_arturl )
        goto end;

    psz_path = FUNC0( psz_arturl, psz_artist, psz_album, psz_date, psz_title );

end:
    FUNC5( &p_item->lock );
    return psz_path;
}
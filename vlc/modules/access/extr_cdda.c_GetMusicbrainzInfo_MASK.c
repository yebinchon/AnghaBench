#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_9__ {int i_tracks; TYPE_1__* p_sectors; } ;
typedef  TYPE_2__ vcddev_toc_t ;
struct vlc_memstream {char* ptr; } ;
typedef  int /*<<< orphan*/  musicbrainz_recording_t ;
struct TYPE_10__ {char* psz_mb_server; int /*<<< orphan*/ * psz_coverart_server; int /*<<< orphan*/ * obj; } ;
typedef  TYPE_3__ musicbrainz_config_t ;
struct TYPE_8__ {int /*<<< orphan*/  i_lba; } ;

/* Variables and functions */
 char* FUNC0 (TYPE_2__ const*,int,int,int) ; 
 int CD_ROM_XA_INTERVAL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (struct vlc_memstream*) ; 
 scalar_t__ FUNC7 (struct vlc_memstream*) ; 
 scalar_t__ FUNC8 (struct vlc_memstream*) ; 
 int /*<<< orphan*/  FUNC9 (struct vlc_memstream*,char*,int,...) ; 

__attribute__((used)) static musicbrainz_recording_t * FUNC10( vlc_object_t *obj,
                                                     const vcddev_toc_t *p_toc,
                                                     int i_total, int i_first, int i_last )
{
    musicbrainz_recording_t *recording = NULL;

    char *psz_mbserver = FUNC5( obj, "musicbrainz-server" );
    if( !psz_mbserver || !*psz_mbserver )
        return NULL;

    musicbrainz_config_t cfg = { .obj = obj,
                                 .psz_mb_server = psz_mbserver,
                                 .psz_coverart_server = NULL };

    /* Build DISC ID based on SHA1 */
    char *psz_disc_id = FUNC0( p_toc,
                                                i_total, i_first, i_last );
    if( psz_disc_id )
    {
        recording = FUNC3( &cfg, psz_disc_id );
    }
    else /* Fuzzy lookup using TOC */
    {
        struct vlc_memstream ms;
        if( FUNC8(&ms) )
        {
            FUNC2( psz_mbserver );
            return NULL;
        }

        FUNC9(&ms, "toc=%u+%u", i_first, i_last );
        /* LEAD OUT sector info
         * https://github.com/metabrainz/libdiscid/blob/e46249415eb6d657ecc63667b03d670a4347712f/src/toc.c#L90 */
        int i_last_track_end;
        if (p_toc->i_tracks > i_total)
            i_last_track_end = FUNC1(p_toc->p_sectors[i_total].i_lba) - CD_ROM_XA_INTERVAL;
        else
            i_last_track_end = FUNC1(p_toc->p_sectors[p_toc->i_tracks].i_lba);
        FUNC9(&ms, "+%u", i_last_track_end );
        for( int i = 0; i<i_total; i++ ) /* skipped LEAD OUT, audio only */
            FUNC9(&ms, "+%u", FUNC1(p_toc->p_sectors[i].i_lba) );
        if( FUNC7(&ms) )
        {
            if( FUNC6(&ms) )
                FUNC2( ms.ptr );
            FUNC2( psz_mbserver );
            return NULL;
        }

        recording = FUNC4( &cfg, ms.ptr );

        if( FUNC6(&ms) == 0 )
            FUNC2( ms.ptr );
    }

    FUNC2( psz_mbserver );
    return recording;
}
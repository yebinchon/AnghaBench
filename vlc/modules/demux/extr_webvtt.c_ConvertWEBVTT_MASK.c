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
struct TYPE_3__ {char* psz_text; char* psz_id; char* psz_attrs; } ;
typedef  TYPE_1__ webvtt_cue_t ;
typedef  char uint8_t ;
struct vlc_memstream {int /*<<< orphan*/  length; int /*<<< orphan*/  ptr; } ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t const) ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct vlc_memstream*) ; 
 scalar_t__ FUNC4 (struct vlc_memstream*) ; 
 int /*<<< orphan*/  FUNC5 (struct vlc_memstream*,char*,size_t const) ; 

__attribute__((used)) static block_t *FUNC6( const webvtt_cue_t *p_cue, bool b_continued )
{
    struct vlc_memstream stream;

    if( FUNC4( &stream ) )
        return NULL;

    const size_t paylsize = 8 + FUNC2( p_cue->psz_text );
    const size_t idensize = (p_cue->psz_id) ? 8 + FUNC2( p_cue->psz_id ) : 0;
    const size_t attrsize = (p_cue->psz_attrs) ? 8 + FUNC2( p_cue->psz_attrs ) : 0;
    const size_t vttcsize = 8 + paylsize + attrsize + idensize;

    uint8_t vttcbox[8] = { 0, 0, 0, 0, 'v', 't', 't', 'c' };
    if( b_continued )
        vttcbox[7] = 'x';
    FUNC0( vttcbox, vttcsize );
    FUNC5( &stream, vttcbox, 8 );

    if( p_cue->psz_id )
    {
        uint8_t idenbox[8] = { 0, 0, 0, 0, 'i', 'd', 'e', 'n' };
        FUNC0( idenbox, idensize );
        FUNC5( &stream, idenbox, 8 );
        FUNC5( &stream, p_cue->psz_id, idensize - 8 );
    }

    if( p_cue->psz_attrs )
    {
        uint8_t attrbox[8] = { 0, 0, 0, 0, 's', 't', 't', 'g' };
        FUNC0( attrbox, attrsize );
        FUNC5( &stream, attrbox, 8 );
        FUNC5( &stream, p_cue->psz_attrs, attrsize - 8 );
    }

    uint8_t paylbox[8] = { 0, 0, 0, 0, 'p', 'a', 'y', 'l' };
    FUNC0( paylbox, paylsize );
    FUNC5( &stream, paylbox, 8 );
    FUNC5( &stream, p_cue->psz_text, paylsize - 8 );

    if( FUNC3( &stream ) == VLC_SUCCESS )
        return FUNC1( stream.ptr, stream.length );
    else
        return NULL;
}
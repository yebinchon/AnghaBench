#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_12__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_13__ {int i_pack_len; scalar_t__ i_cur_cell; int i_title; int i_titles; scalar_t__ i_cur_block; scalar_t__ i_title_offset; int /*<<< orphan*/  p_title; TYPE_1__* p_cur_pgc; scalar_t__ i_next_vobu; int /*<<< orphan*/  p_vts_file; } ;
typedef  TYPE_3__ demux_sys_t ;
struct TYPE_11__ {scalar_t__ nr_of_cells; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int DVD_BLOCK_READ_ONCE ; 
 int DVD_VIDEO_LB_LEN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ,int) ; 
 int VLC_DEMUXER_EOF ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int,...) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 

__attribute__((used)) static int FUNC10( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    if(FUNC8(!p_sys->p_vts_file))
        return VLC_DEMUXER_EOF;

    uint8_t p_buffer[DVD_VIDEO_LB_LEN * DVD_BLOCK_READ_ONCE];
    int i_blocks_once, i_read;

    /*
     * Playback by cell in this pgc, starting at the cell for our chapter.
     */

    /*
     * Check end of pack, and select the following one
     */
    if( !p_sys->i_pack_len )
    {
        /* Read NAV packet */
        if( FUNC0( p_sys->p_title, p_sys->i_next_vobu,
                           1, p_buffer ) != 1 )
        {
            FUNC7( p_demux, "read failed for block %d", p_sys->i_next_vobu );
            FUNC9( p_demux, FUNC4("Playback failure"),
                          FUNC4("DVDRead could not read block %d."),
                          p_sys->i_next_vobu );
            return -1;
        }

        /* Basic check to be sure we don't have a empty title
         * go to next title if so */
        //assert( p_buffer[41] == 0xbf && p_buffer[1027] == 0xbf );
        FUNC1( p_demux, p_buffer, DVD_VIDEO_LB_LEN );

        /* Parse the contained dsi packet */
        FUNC2( p_demux, p_buffer );

        /* End of title */
        if( p_sys->i_cur_cell >= p_sys->p_cur_pgc->nr_of_cells )
        {
            int k = p_sys->i_title;

            /* Looking for a not broken title */
            while( k < p_sys->i_titles && FUNC3( p_demux, ++k, 0, -1 ) != VLC_SUCCESS )
            {
                FUNC7(p_demux, "Failed next title, trying another: %i", k );
                if( k >= p_sys->i_titles )
                    return 0; // EOF
            }
        }

        if( p_sys->i_pack_len >= 1024 )
        {
            FUNC7( p_demux, "i_pack_len >= 1024 (%i). "
                     "This shouldn't happen!", p_sys->i_pack_len );
            return 0; /* EOF */
        }

        p_sys->i_cur_block++;
        p_sys->i_title_offset++;
    }

    if( p_sys->i_cur_cell >= p_sys->p_cur_pgc->nr_of_cells )
    {
        int k = p_sys->i_title;

        /* Looking for a not broken title */
        while( k < p_sys->i_titles && FUNC3( p_demux, ++k, 0, -1 ) != VLC_SUCCESS )
        {
            FUNC7(p_demux, "Failed next title, trying another: %i", k );
            if( k >= p_sys->i_titles )
                return 0; // EOF
        }
    }

    /*
     * Read actual data
     */
    i_blocks_once = FUNC5( p_sys->i_pack_len, DVD_BLOCK_READ_ONCE );
    p_sys->i_pack_len -= i_blocks_once;

    /* Reads from DVD */
    i_read = FUNC0( p_sys->p_title, p_sys->i_cur_block,
                            i_blocks_once, p_buffer );
    if( i_read != i_blocks_once )
    {
        FUNC7( p_demux, "read failed for %d/%d blocks at 0x%02x",
                 i_read, i_blocks_once, p_sys->i_cur_block );
        FUNC9( p_demux, FUNC4("Playback failure"),
                        FUNC4("DVDRead could not read %d/%d blocks at 0x%02x."),
                        i_read, i_blocks_once, p_sys->i_cur_block );
        return -1;
    }

    p_sys->i_cur_block += i_read;
    p_sys->i_title_offset += i_read;

#if 0
    msg_Dbg( p_demux, "i_blocks: %d len: %d current: 0x%02x",
             i_read, p_sys->i_pack_len, p_sys->i_cur_block );
#endif

    for( int i = 0; i < i_read; i++ )
    {
        FUNC1( p_demux, p_buffer + i * DVD_VIDEO_LB_LEN,
                    DVD_VIDEO_LB_LEN );
    }

    return 1;
}
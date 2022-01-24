#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_format_t ;
typedef  int uint8_t ;
struct TYPE_19__ {scalar_t__ i_start; scalar_t__ i_stop; int b_ephemer; int b_absolute; TYPE_5__* p_region; } ;
typedef  TYPE_1__ subpicture_t ;
typedef  int /*<<< orphan*/  psz_text ;
struct TYPE_20__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ decoder_t ;
struct TYPE_21__ {int i_wanted_page; int i_wanted_magazine; int i_align; int /*<<< orphan*/  psz_prev_text; int /*<<< orphan*/ * ppsz_lines; scalar_t__ prev_pts; } ;
typedef  TYPE_3__ decoder_sys_t ;
struct TYPE_22__ {size_t i_buffer; int* p_buffer; scalar_t__ i_pts; scalar_t__ i_length; } ;
typedef  TYPE_4__ block_t ;
struct TYPE_23__ {int i_align; int i_x; int i_y; int /*<<< orphan*/  p_text; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int const*,int,int,scalar_t__) ; 
 int FUNC1 (TYPE_2__*,int const*,int) ; 
 int SUBPICTURE_ALIGN_BOTTOM ; 
 int VLCDEC_SUCCESS ; 
 int /*<<< orphan*/  VLC_CODEC_TEXT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_1__* FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC8 (int const) ; 
 int i_conf_wanted_page ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 TYPE_5__* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19( decoder_t *p_dec, block_t *p_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    subpicture_t  *p_spu = NULL;
    video_format_t fmt;
    /* int erase = 0; */
#if 0
    int i_wanted_magazine = i_conf_wanted_page / 100;
    int i_wanted_page = 0x10 * ((i_conf_wanted_page % 100) / 10)
                         | (i_conf_wanted_page % 10);
#endif
    bool b_update = false;
    char psz_text[512], *pt = psz_text;
    int total;

    if( p_block == NULL ) /* No Drain */
        return VLCDEC_SUCCESS;

//    dbg((p_dec, "start of telx packet with header %2x",
//                * (uint8_t *) p_block->p_buffer));
    for ( size_t offset = 1; offset + 46 <= p_block->i_buffer; offset += 46 )
    {
        const uint8_t *packet = &p_block->p_buffer[offset];
//        int vbi = ((0x20 & packet[2]) != 0 ? 0 : 313) + (0x1F & packet[2]);

//        dbg((p_dec, "vbi %d header %02x %02x %02x", vbi, packet[0], packet[1], packet[2]));
        if ( packet[0] == 0xFF ) continue;

/*      if (packet[1] != 0x2C) { */
/*         printf("wrong header\n"); */
/*         //goto error; */
/*         continue; */
/*       } */

        /* See EN.300.706 7.1.4 */
        int mpag = (FUNC8( packet[4] ) << 4) | FUNC8( packet[5] );
        int row, magazine;
        if ( mpag < 0 )
        {
            /* decode error */
            FUNC5((p_dec, "mpag hamming error"));
            continue;
        }

        /* magazine number 0-7, row 0-31 (== packet number... or Y) */
        row = 0xFF & FUNC4(mpag);
        magazine = (7 & row) == 0 ? 8 : (7 & row);
        row >>= 3;

        if ( p_sys->i_wanted_page != -1
              && magazine != p_sys->i_wanted_magazine )
            continue;

        if ( row == 0 ) /* Page Header Packet */
        {
            /* row 0 : flags and header line */
            b_update |= FUNC1( p_dec, packet, magazine );
            if( b_update )
                FUNC5((p_dec, "%ld --> %ld", (long int) p_block->i_pts,
                                           (long int)(p_sys->prev_pts+1500000)));
        }
        else if ( row < 26 ) /* Normal Packet */
        {
            b_update |= FUNC0( p_dec, packet, magazine, row,
                                            p_block->i_pts );
        }
//       else if (row >= 26) { /* Non Displayable Packet */
//         // row 26 : TV listings
//            dbg((p_dec, "%d %d : %s", magazine, row, decode_string(p_sys, magazine, packet+6, 40)));
//       }
    }

    if ( !b_update )
        goto error;

    total = 0;
    for ( int i = 1; i < 24; i++ )
    {
        size_t l = FUNC14( p_sys->ppsz_lines[i] );

        if ( l > sizeof(psz_text) - total - 1 )
            l = sizeof(psz_text) - total - 1;

        if ( l > 0 )
        {
            FUNC9( pt, p_sys->ppsz_lines[i], l );
            total += l;
            pt += l;
            if ( sizeof(psz_text) - total - 1 > 0 )
            {
                *pt++ = '\n';
                total++;
            }
        }
    }
    *pt = 0;

    if ( !FUNC12(psz_text, p_sys->psz_prev_text) )
        goto error;

    FUNC5((p_dec, "UPDATE TELETEXT PICTURE"));

    FUNC2( sizeof(p_sys->psz_prev_text) >= sizeof(psz_text) );
    FUNC13( p_sys->psz_prev_text, psz_text );

    /* Create the subpicture unit */
    p_spu = FUNC6( p_dec, NULL );
    if( !p_spu )
    {
        FUNC11( p_dec, "can't get spu buffer" );
        goto error;
    }

    /* Create a new subpicture region */
    FUNC18(&fmt, VLC_CODEC_TEXT);
    p_spu->p_region = FUNC16( &fmt );
    if( p_spu->p_region == NULL )
    {
        FUNC10( p_dec, "cannot allocate SPU region" );
        goto error;
    }

    /* Normal text subs, easy markup */
    p_spu->p_region->i_align = SUBPICTURE_ALIGN_BOTTOM | p_sys->i_align;
    p_spu->p_region->i_x = p_sys->i_align ? 20 : 0;
    p_spu->p_region->i_y = 10;
    p_spu->p_region->p_text = FUNC17(psz_text);

    p_spu->i_start = p_block->i_pts;
    p_spu->i_stop = p_block->i_pts + p_block->i_length;
    p_spu->b_ephemer = (p_block->i_length == 0);
    p_spu->b_absolute = false;
    FUNC5((p_dec, "%ld --> %ld", (long int) p_block->i_pts/100000, (long int)p_block->i_length/100000));

    FUNC3( p_block );
    if( p_spu != NULL )
        FUNC7( p_dec, p_spu );
    return VLCDEC_SUCCESS;

error:
    if ( p_spu != NULL )
    {
        FUNC15( p_spu );
        p_spu = NULL;
    }

    FUNC3( p_block );
    return VLCDEC_SUCCESS;
}
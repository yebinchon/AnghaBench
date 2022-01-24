#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct TYPE_15__ {int i_object_defs; TYPE_1__* p_object_defs; struct TYPE_15__* p_next; } ;
typedef  TYPE_2__ dvbsub_region_t ;
struct TYPE_16__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ decoder_t ;
struct TYPE_17__ {TYPE_2__* p_regions; } ;
typedef  TYPE_4__ decoder_sys_t ;
struct TYPE_18__ {int /*<<< orphan*/ * p_end; int /*<<< orphan*/ * p_start; } ;
typedef  TYPE_5__ bs_t ;
struct TYPE_14__ {int i_id; char* psz_text; scalar_t__ i_y; int /*<<< orphan*/  i_x; } ;

/* Variables and functions */
 int FUNC0 (TYPE_5__*) ; 
 int FUNC1 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,...) ; 
 char* FUNC5 (char*,int) ; 

__attribute__((used)) static void FUNC6( decoder_t *p_dec, bs_t *s, uint16_t i_segment_length )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    dvbsub_region_t *p_region;
    int i_coding_method, i_id, i;

    /* ETSI 300-743 paragraph 7.2.4
     * sync_byte, segment_type and page_id have already been processed.
     */
    i_id             = FUNC1( s, 16 );
    FUNC2( s, 4 ); /* version */
    i_coding_method  = FUNC1( s, 2 );

    if( i_coding_method > 1 )
    {
        FUNC4( p_dec, "unknown DVB subtitling coding %d is not handled!", i_coding_method );
        FUNC2( s, 8 * (i_segment_length - 2) - 6 );
        return;
    }

    /* Check if the object needs to be rendered in at least one
     * of the regions */
    for( p_region = p_sys->p_regions; p_region != NULL;
         p_region = p_region->p_next )
    {
        for( i = 0; i < p_region->i_object_defs; i++ )
            if( p_region->p_object_defs[i].i_id == i_id ) break;

        if( i != p_region->i_object_defs ) break;
    }
    if( !p_region )
    {
        FUNC2( s, 8 * (i_segment_length - 2) - 6 );
        return;
    }

#ifdef DEBUG_DVBSUB
    msg_Dbg( p_dec, "new object: %i", i_id );
#endif

    FUNC2( s, 1 ); /* non_modify_color */
    FUNC2( s, 1 ); /* Reserved */

    if( i_coding_method == 0x00 )
    {
        int i_topfield, i_bottomfield;
        uint8_t *p_topfield, *p_bottomfield;

        i_topfield    = FUNC1( s, 16 );
        i_bottomfield = FUNC1( s, 16 );
        p_topfield    = s->p_start + FUNC0( s ) / 8;
        p_bottomfield = p_topfield + i_topfield;

        FUNC2( s, 8 * (i_segment_length - 7) );

        /* Sanity check */
        if( ( i_segment_length < ( i_topfield + i_bottomfield + 7 ) ) ||
            ( ( p_topfield + i_topfield + i_bottomfield ) > s->p_end ) )
        {
            FUNC4( p_dec, "corrupted object data" );
            return;
        }

        for( p_region = p_sys->p_regions; p_region != NULL;
             p_region = p_region->p_next )
        {
            for( i = 0; i < p_region->i_object_defs; i++ )
            {
                if( p_region->p_object_defs[i].i_id != i_id ) continue;

                FUNC3( p_dec, p_region,
                                     p_region->p_object_defs[i].i_x,
                                     p_region->p_object_defs[i].i_y,
                                     p_topfield, i_topfield );

                if( i_bottomfield )
                {
                    FUNC3( p_dec, p_region,
                                         p_region->p_object_defs[i].i_x,
                                         p_region->p_object_defs[i].i_y + 1,
                                         p_bottomfield, i_bottomfield );
                }
                else
                {
                    /* Duplicate the top field */
                    FUNC3( p_dec, p_region,
                                         p_region->p_object_defs[i].i_x,
                                         p_region->p_object_defs[i].i_y + 1,
                                         p_topfield, i_topfield );
                }
            }
        }
    }
    else
    {
        /* DVB subtitling as characters */
        int i_number_of_codes = FUNC1( s, 8 );
        uint8_t* p_start = s->p_start + FUNC0( s ) / 8;

        /* Sanity check */
        if( ( i_segment_length < ( i_number_of_codes*2 + 4 ) ) ||
            ( ( p_start + i_number_of_codes*2 ) > s->p_end ) )
        {
            FUNC4( p_dec, "corrupted object data" );
            return;
        }

        for( p_region = p_sys->p_regions; p_region != NULL;
             p_region = p_region->p_next )
        {
            for( i = 0; i < p_region->i_object_defs; i++ )
            {
                int j;

                if( p_region->p_object_defs[i].i_id != i_id ) continue;

                p_region->p_object_defs[i].psz_text =
                    FUNC5( p_region->p_object_defs[i].psz_text,
                             i_number_of_codes + 1 );

                /* FIXME 16bits -> char ??? See Preamble */
                for( j = 0; j < i_number_of_codes; j++ )
                {
                    p_region->p_object_defs[i].psz_text[j] = (char)(FUNC1( s, 16 ) & 0xFF);
                }
                /* Null terminate the string */
                p_region->p_object_defs[i].psz_text[j] = 0;
            }
        }
    }

#ifdef DEBUG_DVBSUB
    msg_Dbg( p_dec, "end object: %i", i_id );
#endif
}
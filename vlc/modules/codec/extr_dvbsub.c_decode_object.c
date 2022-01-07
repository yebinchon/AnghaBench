
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_15__ {int i_object_defs; TYPE_1__* p_object_defs; struct TYPE_15__* p_next; } ;
typedef TYPE_2__ dvbsub_region_t ;
struct TYPE_16__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_17__ {TYPE_2__* p_regions; } ;
typedef TYPE_4__ decoder_sys_t ;
struct TYPE_18__ {int * p_end; int * p_start; } ;
typedef TYPE_5__ bs_t ;
struct TYPE_14__ {int i_id; char* psz_text; scalar_t__ i_y; int i_x; } ;


 int bs_pos (TYPE_5__*) ;
 int bs_read (TYPE_5__*,int) ;
 int bs_skip (TYPE_5__*,int) ;
 int dvbsub_render_pdata (TYPE_3__*,TYPE_2__*,int ,scalar_t__,int *,int) ;
 int msg_Dbg (TYPE_3__*,char*,...) ;
 char* xrealloc (char*,int) ;

__attribute__((used)) static void decode_object( decoder_t *p_dec, bs_t *s, uint16_t i_segment_length )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    dvbsub_region_t *p_region;
    int i_coding_method, i_id, i;




    i_id = bs_read( s, 16 );
    bs_skip( s, 4 );
    i_coding_method = bs_read( s, 2 );

    if( i_coding_method > 1 )
    {
        msg_Dbg( p_dec, "unknown DVB subtitling coding %d is not handled!", i_coding_method );
        bs_skip( s, 8 * (i_segment_length - 2) - 6 );
        return;
    }



    for( p_region = p_sys->p_regions; p_region != ((void*)0);
         p_region = p_region->p_next )
    {
        for( i = 0; i < p_region->i_object_defs; i++ )
            if( p_region->p_object_defs[i].i_id == i_id ) break;

        if( i != p_region->i_object_defs ) break;
    }
    if( !p_region )
    {
        bs_skip( s, 8 * (i_segment_length - 2) - 6 );
        return;
    }





    bs_skip( s, 1 );
    bs_skip( s, 1 );

    if( i_coding_method == 0x00 )
    {
        int i_topfield, i_bottomfield;
        uint8_t *p_topfield, *p_bottomfield;

        i_topfield = bs_read( s, 16 );
        i_bottomfield = bs_read( s, 16 );
        p_topfield = s->p_start + bs_pos( s ) / 8;
        p_bottomfield = p_topfield + i_topfield;

        bs_skip( s, 8 * (i_segment_length - 7) );


        if( ( i_segment_length < ( i_topfield + i_bottomfield + 7 ) ) ||
            ( ( p_topfield + i_topfield + i_bottomfield ) > s->p_end ) )
        {
            msg_Dbg( p_dec, "corrupted object data" );
            return;
        }

        for( p_region = p_sys->p_regions; p_region != ((void*)0);
             p_region = p_region->p_next )
        {
            for( i = 0; i < p_region->i_object_defs; i++ )
            {
                if( p_region->p_object_defs[i].i_id != i_id ) continue;

                dvbsub_render_pdata( p_dec, p_region,
                                     p_region->p_object_defs[i].i_x,
                                     p_region->p_object_defs[i].i_y,
                                     p_topfield, i_topfield );

                if( i_bottomfield )
                {
                    dvbsub_render_pdata( p_dec, p_region,
                                         p_region->p_object_defs[i].i_x,
                                         p_region->p_object_defs[i].i_y + 1,
                                         p_bottomfield, i_bottomfield );
                }
                else
                {

                    dvbsub_render_pdata( p_dec, p_region,
                                         p_region->p_object_defs[i].i_x,
                                         p_region->p_object_defs[i].i_y + 1,
                                         p_topfield, i_topfield );
                }
            }
        }
    }
    else
    {

        int i_number_of_codes = bs_read( s, 8 );
        uint8_t* p_start = s->p_start + bs_pos( s ) / 8;


        if( ( i_segment_length < ( i_number_of_codes*2 + 4 ) ) ||
            ( ( p_start + i_number_of_codes*2 ) > s->p_end ) )
        {
            msg_Dbg( p_dec, "corrupted object data" );
            return;
        }

        for( p_region = p_sys->p_regions; p_region != ((void*)0);
             p_region = p_region->p_next )
        {
            for( i = 0; i < p_region->i_object_defs; i++ )
            {
                int j;

                if( p_region->p_object_defs[i].i_id != i_id ) continue;

                p_region->p_object_defs[i].psz_text =
                    xrealloc( p_region->p_object_defs[i].psz_text,
                             i_number_of_codes + 1 );


                for( j = 0; j < i_number_of_codes; j++ )
                {
                    p_region->p_object_defs[i].psz_text[j] = (char)(bs_read( s, 16 ) & 0xFF);
                }

                p_region->p_object_defs[i].psz_text[j] = 0;
            }
        }
    }




}

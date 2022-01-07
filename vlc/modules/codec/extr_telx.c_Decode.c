
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int video_format_t ;
typedef int uint8_t ;
struct TYPE_19__ {scalar_t__ i_start; scalar_t__ i_stop; int b_ephemer; int b_absolute; TYPE_5__* p_region; } ;
typedef TYPE_1__ subpicture_t ;
typedef int psz_text ;
struct TYPE_20__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ decoder_t ;
struct TYPE_21__ {int i_wanted_page; int i_wanted_magazine; int i_align; int psz_prev_text; int * ppsz_lines; scalar_t__ prev_pts; } ;
typedef TYPE_3__ decoder_sys_t ;
struct TYPE_22__ {size_t i_buffer; int* p_buffer; scalar_t__ i_pts; scalar_t__ i_length; } ;
typedef TYPE_4__ block_t ;
struct TYPE_23__ {int i_align; int i_x; int i_y; int p_text; } ;


 int DecodeNormalPacket (TYPE_2__*,int const*,int,int,scalar_t__) ;
 int DecodePageHeaderPacket (TYPE_2__*,int const*,int) ;
 int SUBPICTURE_ALIGN_BOTTOM ;
 int VLCDEC_SUCCESS ;
 int VLC_CODEC_TEXT ;
 int assert (int) ;
 int block_Release (TYPE_4__*) ;
 int bytereverse (int) ;
 int dbg (TYPE_2__*) ;
 TYPE_1__* decoder_NewSubpicture (TYPE_2__*,int *) ;
 int decoder_QueueSub (TYPE_2__*,TYPE_1__*) ;
 int hamming_8_4 (int const) ;
 int i_conf_wanted_page ;
 int memcpy (char*,int ,size_t) ;
 int msg_Err (TYPE_2__*,char*) ;
 int msg_Warn (TYPE_2__*,char*) ;
 int strcmp (char*,int ) ;
 int strcpy (int ,char*) ;
 size_t strlen (int ) ;
 int subpicture_Delete (TYPE_1__*) ;
 TYPE_5__* subpicture_region_New (int *) ;
 int text_segment_New (char*) ;
 int video_format_Init (int *,int ) ;

__attribute__((used)) static int Decode( decoder_t *p_dec, block_t *p_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    subpicture_t *p_spu = ((void*)0);
    video_format_t fmt;






    bool b_update = 0;
    char psz_text[512], *pt = psz_text;
    int total;

    if( p_block == ((void*)0) )
        return VLCDEC_SUCCESS;



    for ( size_t offset = 1; offset + 46 <= p_block->i_buffer; offset += 46 )
    {
        const uint8_t *packet = &p_block->p_buffer[offset];



        if ( packet[0] == 0xFF ) continue;
        int mpag = (hamming_8_4( packet[4] ) << 4) | hamming_8_4( packet[5] );
        int row, magazine;
        if ( mpag < 0 )
        {

            dbg((p_dec, "mpag hamming error"));
            continue;
        }


        row = 0xFF & bytereverse(mpag);
        magazine = (7 & row) == 0 ? 8 : (7 & row);
        row >>= 3;

        if ( p_sys->i_wanted_page != -1
              && magazine != p_sys->i_wanted_magazine )
            continue;

        if ( row == 0 )
        {

            b_update |= DecodePageHeaderPacket( p_dec, packet, magazine );
            if( b_update )
                dbg((p_dec, "%ld --> %ld", (long int) p_block->i_pts,
                                           (long int)(p_sys->prev_pts+1500000)));
        }
        else if ( row < 26 )
        {
            b_update |= DecodeNormalPacket( p_dec, packet, magazine, row,
                                            p_block->i_pts );
        }




    }

    if ( !b_update )
        goto error;

    total = 0;
    for ( int i = 1; i < 24; i++ )
    {
        size_t l = strlen( p_sys->ppsz_lines[i] );

        if ( l > sizeof(psz_text) - total - 1 )
            l = sizeof(psz_text) - total - 1;

        if ( l > 0 )
        {
            memcpy( pt, p_sys->ppsz_lines[i], l );
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

    if ( !strcmp(psz_text, p_sys->psz_prev_text) )
        goto error;

    dbg((p_dec, "UPDATE TELETEXT PICTURE"));

    assert( sizeof(p_sys->psz_prev_text) >= sizeof(psz_text) );
    strcpy( p_sys->psz_prev_text, psz_text );


    p_spu = decoder_NewSubpicture( p_dec, ((void*)0) );
    if( !p_spu )
    {
        msg_Warn( p_dec, "can't get spu buffer" );
        goto error;
    }


    video_format_Init(&fmt, VLC_CODEC_TEXT);
    p_spu->p_region = subpicture_region_New( &fmt );
    if( p_spu->p_region == ((void*)0) )
    {
        msg_Err( p_dec, "cannot allocate SPU region" );
        goto error;
    }


    p_spu->p_region->i_align = SUBPICTURE_ALIGN_BOTTOM | p_sys->i_align;
    p_spu->p_region->i_x = p_sys->i_align ? 20 : 0;
    p_spu->p_region->i_y = 10;
    p_spu->p_region->p_text = text_segment_New(psz_text);

    p_spu->i_start = p_block->i_pts;
    p_spu->i_stop = p_block->i_pts + p_block->i_length;
    p_spu->b_ephemer = (p_block->i_length == 0);
    p_spu->b_absolute = 0;
    dbg((p_dec, "%ld --> %ld", (long int) p_block->i_pts/100000, (long int)p_block->i_length/100000));

    block_Release( p_block );
    if( p_spu != ((void*)0) )
        decoder_QueueSub( p_dec, p_spu );
    return VLCDEC_SUCCESS;

error:
    if ( p_spu != ((void*)0) )
    {
        subpicture_Delete( p_spu );
        p_spu = ((void*)0);
    }

    block_Release( p_block );
    return VLCDEC_SUCCESS;
}

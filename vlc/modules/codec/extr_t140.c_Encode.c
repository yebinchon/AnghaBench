
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int * psz_text; struct TYPE_10__* p_next; } ;
typedef TYPE_2__ text_segment_t ;
struct TYPE_11__ {scalar_t__ i_start; scalar_t__ i_stop; int b_ephemer; TYPE_4__* p_region; } ;
typedef TYPE_3__ subpicture_t ;
struct TYPE_9__ {scalar_t__ i_chroma; } ;
struct TYPE_12__ {TYPE_2__* p_text; TYPE_1__ fmt; } ;
typedef TYPE_4__ subpicture_region_t ;
typedef int encoder_t ;
struct TYPE_13__ {size_t i_buffer; scalar_t__ i_pts; scalar_t__ i_dts; scalar_t__ i_length; scalar_t__* p_buffer; } ;
typedef TYPE_5__ block_t ;


 scalar_t__ VLC_CODEC_TEXT ;
 int VLC_UNUSED (int *) ;
 TYPE_5__* block_Alloc (size_t) ;
 int memcpy (scalar_t__*,int *,size_t) ;
 size_t strlen (int *) ;

__attribute__((used)) static block_t *Encode( encoder_t *p_enc, subpicture_t *p_spu )
{
    VLC_UNUSED( p_enc );

    subpicture_region_t *p_region;
    block_t *p_block;
    size_t len = 0;

    if( p_spu == ((void*)0) )
        return ((void*)0);

    p_region = p_spu->p_region;
    if( ( p_region == ((void*)0) )
     || ( p_region->fmt.i_chroma != VLC_CODEC_TEXT )
     || ( p_region->p_text == ((void*)0) )
     || ( p_region->p_text->psz_text == ((void*)0)) )
        return ((void*)0);


    for( const text_segment_t *p_segment = p_region->p_text;
                               p_segment; p_segment = p_segment->p_next )
    {
        if( p_segment->psz_text == ((void*)0) )
            continue;
        len += strlen( p_segment->psz_text );
    }

    p_block = block_Alloc( len + 1 );
    if( !p_block )
        return ((void*)0);

    p_block->i_buffer = 0;
    for( const text_segment_t *p_segment = p_region->p_text;
                               p_segment; p_segment = p_segment->p_next )
    {
        if( p_segment->psz_text == ((void*)0) )
            continue;
        len = strlen( p_segment->psz_text );
        memcpy( &p_block->p_buffer[p_block->i_buffer],
                p_segment->psz_text, len );
        p_block->i_buffer += len;
    }
    p_block->p_buffer[p_block->i_buffer] = 0;

    p_block->i_pts = p_block->i_dts = p_spu->i_start;
    if( !p_spu->b_ephemer && ( p_spu->i_stop > p_spu->i_start ) )
        p_block->i_length = p_spu->i_stop - p_spu->i_start;

    return p_block;
}

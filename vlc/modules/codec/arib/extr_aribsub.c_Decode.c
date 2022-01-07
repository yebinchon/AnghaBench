
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int subpicture_t ;
struct TYPE_10__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_11__ {int p_arib_instance; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_12__ {int i_flags; int i_buffer; int p_buffer; } ;
typedef TYPE_3__ block_t ;
typedef int arib_parser_t ;
typedef int arib_decoder_t ;


 int BLOCK_FLAG_CORRUPTED ;
 int VLCDEC_SUCCESS ;
 int * arib_get_decoder (int ) ;
 int * arib_get_parser (int ) ;
 int arib_parse_pes (int *,int ,int ) ;
 int block_Release (TYPE_3__*) ;
 int decoder_QueueSub (TYPE_1__*,int *) ;
 int * render (TYPE_1__*,int *,int *,TYPE_3__*) ;

__attribute__((used)) static int Decode( decoder_t *p_dec, block_t *p_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( p_block == ((void*)0) )
        return VLCDEC_SUCCESS;

    if( p_block->i_flags & BLOCK_FLAG_CORRUPTED )
    {
        block_Release( p_block );
        return VLCDEC_SUCCESS;
    }

    arib_parser_t *p_parser = arib_get_parser( p_sys->p_arib_instance );
    arib_decoder_t *p_decoder = arib_get_decoder( p_sys->p_arib_instance );
    if ( p_parser && p_decoder )
    {
        arib_parse_pes( p_parser, p_block->p_buffer, p_block->i_buffer );
        subpicture_t *p_spu = render( p_dec, p_parser, p_decoder, p_block );
        if( p_spu != ((void*)0) )
            decoder_QueueSub( p_dec, p_spu );
    }

    block_Release( p_block );
    return VLCDEC_SUCCESS;
}

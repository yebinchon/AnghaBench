
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_14__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_15__ {scalar_t__ i_state; scalar_t__ i_image; int i_packet; int i_spu_size; int * p_spu; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_16__ {int i_flags; scalar_t__ i_buffer; int* p_buffer; } ;
typedef TYPE_3__ block_t ;


 int BLOCK_FLAG_CORRUPTED ;
 scalar_t__ GETINT16 (int*) ;
 int ParseHeader (TYPE_1__*,TYPE_3__*) ;
 scalar_t__ SPU_HEADER_LEN ;
 scalar_t__ SUBTITLE_BLOCK_COMPLETE ;
 scalar_t__ SUBTITLE_BLOCK_EMPTY ;
 scalar_t__ SUBTITLE_BLOCK_PARTIAL ;
 int block_ChainAppend (int **,TYPE_3__*) ;
 TYPE_3__* block_ChainGather (int *) ;
 int block_ChainRelease (int *) ;
 int block_Release (TYPE_3__*) ;
 int msg_Dbg (TYPE_1__*,char*,int,...) ;
 int msg_Warn (TYPE_1__*,char*,...) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static block_t *Reassemble( decoder_t *p_dec, block_t *p_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    uint8_t *p_buffer;
    uint16_t i_expected_image;
    uint8_t i_packet, i_expected_packet;

    if( p_block->i_flags & (BLOCK_FLAG_CORRUPTED) )
    {
        block_Release( p_block );
        return ((void*)0);
    }

    if( p_block->i_buffer < SPU_HEADER_LEN )
    {
        msg_Dbg( p_dec, "invalid packet header (size %zu < %u)" ,
                 p_block->i_buffer, SPU_HEADER_LEN );
        block_Release( p_block );
        return ((void*)0);
    }

    p_buffer = p_block->p_buffer;

    if( p_sys->i_state == SUBTITLE_BLOCK_EMPTY )
    {
        i_expected_image = p_sys->i_image + 1;
        i_expected_packet = 0;
    }
    else
    {
        i_expected_image = p_sys->i_image;
        i_expected_packet = p_sys->i_packet + 1;
    }



    p_buffer += 2;

    if( *p_buffer & 0x80 )
    {
        p_sys->i_state = SUBTITLE_BLOCK_COMPLETE;
        i_packet = *p_buffer++ & 0x7F;
    }
    else
    {
        p_sys->i_state = SUBTITLE_BLOCK_PARTIAL;
        i_packet = *p_buffer++;
    }

    p_sys->i_image = GETINT16(p_buffer);

    if( p_sys->i_image != i_expected_image )
    {
        msg_Warn( p_dec, "expected subtitle image %u but found %u",
                  i_expected_image, p_sys->i_image );
    }

    if( i_packet != i_expected_packet )
    {
        msg_Warn( p_dec, "expected subtitle image packet %u but found %u",
                  i_expected_packet, i_packet );
    }

    p_block->p_buffer += SPU_HEADER_LEN;
    p_block->i_buffer -= SPU_HEADER_LEN;

    p_sys->i_packet = i_packet;

    if( !p_sys->i_packet ) ParseHeader( p_dec, p_block );

    block_ChainAppend( &p_sys->p_spu, p_block );

    if( p_sys->i_state == SUBTITLE_BLOCK_COMPLETE )
    {
        block_t *p_spu = block_ChainGather( p_sys->p_spu );

        if( unlikely( !p_spu ) )
        {
            block_ChainRelease( p_sys->p_spu );
            p_sys->i_state = SUBTITLE_BLOCK_EMPTY;
            p_sys->p_spu = ((void*)0);

            msg_Warn( p_dec, "unable to assemble blocks, discarding" );
            return ((void*)0);
        }

        if( p_spu->i_buffer != p_sys->i_spu_size )
        {
            msg_Warn( p_dec, "subtitle packets size=%zu should be %zu",
                      p_spu->i_buffer, p_sys->i_spu_size );
        }

        msg_Dbg( p_dec, "subtitle packet complete, size=%zu", p_spu->i_buffer );

        p_sys->i_state = SUBTITLE_BLOCK_EMPTY;
        p_sys->p_spu = ((void*)0);
        return p_spu;
    }

    return ((void*)0);
}

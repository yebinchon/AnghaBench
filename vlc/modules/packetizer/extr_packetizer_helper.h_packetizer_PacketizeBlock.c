
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_23__ {TYPE_2__* p_block; int p_chain; } ;
struct TYPE_21__ {int i_state; int i_offset; size_t i_au_prepend; size_t i_au_min_size; TYPE_9__ bytestream; int p_private; int (* pf_validate ) (int ,TYPE_2__*) ;TYPE_2__* (* pf_parse ) (int ,int*,TYPE_2__*) ;int p_au_prepend; int i_startcode; int pf_startcode_helper; int p_startcode; int (* pf_reset ) (int ,int) ;} ;
typedef TYPE_1__ packetizer_t ;
struct TYPE_22__ {int i_flags; size_t i_buffer; void* i_pts; void* i_dts; int * p_buffer; } ;
typedef TYPE_2__ block_t ;


 int BLOCK_FLAG_AU_END ;
 int BLOCK_FLAG_CORRUPTED ;
 int BLOCK_FLAG_DISCONTINUITY ;


 void* VLC_TICK_INVALID ;
 TYPE_2__* block_Alloc (size_t) ;
 int block_BytestreamEmpty (TYPE_9__*) ;
 int block_BytestreamFlush (TYPE_9__*) ;
 TYPE_2__* block_BytestreamPop (TYPE_9__*) ;
 int block_BytestreamPush (TYPE_9__*,TYPE_2__*) ;
 int block_BytestreamRemaining (TYPE_9__*) ;
 int block_FindStartcodeFromOffset (TYPE_9__*,int*,int ,int ,int ,int *) ;
 int block_GetBytes (TYPE_9__*,int *,size_t) ;
 int block_Release (TYPE_2__*) ;
 int block_SkipBytes (TYPE_9__*,int) ;
 int memcpy (int *,int ,size_t) ;
 int stub1 (int ,int) ;
 TYPE_2__* stub2 (int ,int*,TYPE_2__*) ;
 int stub3 (int ,TYPE_2__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static block_t *packetizer_PacketizeBlock( packetizer_t *p_pack, block_t **pp_block )
{
    block_t *p_block = ( pp_block ) ? *pp_block : ((void*)0);

    if( p_block == ((void*)0) && p_pack->bytestream.p_block == ((void*)0) )
        return ((void*)0);

    if( p_block && unlikely( p_block->i_flags&(BLOCK_FLAG_DISCONTINUITY|BLOCK_FLAG_CORRUPTED) ) )
    {
        block_t *p_drained = packetizer_PacketizeBlock( p_pack, ((void*)0) );
        if( p_drained )
            return p_drained;

        p_pack->i_state = 128;
        block_BytestreamEmpty( &p_pack->bytestream );
        p_pack->i_offset = 0;
        p_pack->pf_reset( p_pack->p_private, 0 );
    }

    if( p_block )
        block_BytestreamPush( &p_pack->bytestream, p_block );

    for( ;; )
    {
        bool b_used_ts;
        block_t *p_pic;

        switch( p_pack->i_state )
        {
        case 128:

            if( !block_FindStartcodeFromOffset( &p_pack->bytestream, &p_pack->i_offset,
                                                p_pack->p_startcode, p_pack->i_startcode,
                                                p_pack->pf_startcode_helper, ((void*)0) ) )
                p_pack->i_state = 129;

            if( p_pack->i_offset )
            {
                block_SkipBytes( &p_pack->bytestream, p_pack->i_offset );
                p_pack->i_offset = 0;
                block_BytestreamFlush( &p_pack->bytestream );
            }

            if( p_pack->i_state != 129 )
                return ((void*)0);

            p_pack->i_offset = 1;


        case 129:

            if( block_FindStartcodeFromOffset( &p_pack->bytestream, &p_pack->i_offset,
                                               p_pack->p_startcode, p_pack->i_startcode,
                                               p_pack->pf_startcode_helper, ((void*)0) ) )
            {
                if( pp_block || !p_pack->bytestream.p_chain )
                    return ((void*)0);



                p_pack->i_offset = block_BytestreamRemaining(&p_pack->bytestream);
                if( p_pack->i_offset == 0 )
                    return ((void*)0);

                if( p_pack->i_offset <= (size_t)p_pack->i_startcode &&
                    (p_pack->bytestream.p_block->i_flags & BLOCK_FLAG_AU_END) == 0 )
                    return ((void*)0);
            }

            block_BytestreamFlush( &p_pack->bytestream );


            block_t *p_block_bytestream = p_pack->bytestream.p_block;

            p_pic = block_Alloc( p_pack->i_offset + p_pack->i_au_prepend );
            p_pic->i_pts = p_block_bytestream->i_pts;
            p_pic->i_dts = p_block_bytestream->i_dts;


            if( (p_block_bytestream->i_flags & BLOCK_FLAG_AU_END) &&
                 p_block_bytestream->i_buffer == p_pack->i_offset )
            {
                p_pic->i_flags |= BLOCK_FLAG_AU_END;
            }

            block_GetBytes( &p_pack->bytestream, &p_pic->p_buffer[p_pack->i_au_prepend],
                            p_pic->i_buffer - p_pack->i_au_prepend );
            if( p_pack->i_au_prepend > 0 )
                memcpy( p_pic->p_buffer, p_pack->p_au_prepend, p_pack->i_au_prepend );

            p_pack->i_offset = 0;


            if( p_pic->i_buffer < p_pack->i_au_min_size )
            {
                block_Release( p_pic );
                p_pic = ((void*)0);
            }
            else
            {
                p_pic = p_pack->pf_parse( p_pack->p_private, &b_used_ts, p_pic );
                if( b_used_ts )
                {
                    p_block_bytestream->i_dts = VLC_TICK_INVALID;
                    p_block_bytestream->i_pts = VLC_TICK_INVALID;
                }
            }

            if( !p_pic )
            {
                p_pack->i_state = 128;
                break;
            }
            if( p_pack->pf_validate( p_pack->p_private, p_pic ) )
            {
                p_pack->i_state = 128;
                block_Release( p_pic );
                break;
            }


            if( pp_block )
                *pp_block = block_BytestreamPop( &p_pack->bytestream );

            p_pack->i_state = 128;

            return p_pic;
        }
    }
}

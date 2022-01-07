
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_15__ {int p_fifo; } ;
typedef TYPE_1__ sout_input_t ;
struct TYPE_16__ {int tinfo; scalar_t__ extrabuilder; } ;
typedef TYPE_2__ mp4_stream_t ;
struct TYPE_17__ {int i_buffer; int p_buffer; } ;
typedef TYPE_3__ block_t ;
struct TYPE_18__ {int i_codec; } ;


 TYPE_3__* AV1_Pack_Sample (TYPE_3__*) ;
 TYPE_3__* ConvertSUBT (TYPE_3__*) ;




 TYPE_3__* block_FifoGet (int ) ;
 TYPE_3__* hxxx_AnnexB_to_xVC (TYPE_3__*,int) ;
 TYPE_4__* mp4mux_track_GetFmt (int ) ;
 int mp4mux_track_HasSamplePriv (int ) ;
 int mp4mux_track_SetSamplePriv (int ,int const*,size_t) ;
 int mux_extradata_builder_Feed (scalar_t__,int ,int ) ;
 size_t mux_extradata_builder_Get (scalar_t__,int const**) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static block_t * BlockDequeue(sout_input_t *p_input, mp4_stream_t *p_stream)
{
    block_t *p_block = block_FifoGet(p_input->p_fifo);
    if(unlikely(!p_block))
        return ((void*)0);


    if(p_stream->extrabuilder && !mp4mux_track_HasSamplePriv(p_stream->tinfo))
    {
         mux_extradata_builder_Feed(p_stream->extrabuilder,
                                    p_block->p_buffer, p_block->i_buffer);
         const uint8_t *p_extra;
         size_t i_extra = mux_extradata_builder_Get(p_stream->extrabuilder, &p_extra);
         if(i_extra)
            mp4mux_track_SetSamplePriv(p_stream->tinfo, p_extra, i_extra);
    }

    switch(mp4mux_track_GetFmt(p_stream->tinfo)->i_codec)
    {
        case 131:
            p_block = AV1_Pack_Sample(p_block);
            break;
        case 130:
        case 129:
            p_block = hxxx_AnnexB_to_xVC(p_block, 4);
            break;
        case 128:
            p_block = ConvertSUBT(p_block);
            break;
        default:
            break;
    }

    return p_block;
}

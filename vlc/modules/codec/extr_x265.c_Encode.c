
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_23__ {scalar_t__ pts; int poc; int sliceType; int * stride; int * planes; } ;
typedef TYPE_4__ x265_picture ;
struct TYPE_24__ {int payload; scalar_t__ sizeBytes; } ;
typedef TYPE_5__ x265_nal ;
typedef size_t uint32_t ;
struct TYPE_25__ {scalar_t__ date; int i_planes; TYPE_1__* p; } ;
typedef TYPE_6__ picture_t ;
struct TYPE_21__ {int i_frame_rate; int i_frame_rate_base; } ;
struct TYPE_22__ {TYPE_2__ video; } ;
struct TYPE_26__ {TYPE_3__ fmt_in; TYPE_8__* p_sys; } ;
typedef TYPE_7__ encoder_t ;
struct TYPE_27__ {scalar_t__ initial_date; float start; scalar_t__ frame_count; int h; int param; } ;
typedef TYPE_8__ encoder_sys_t ;
struct TYPE_28__ {int i_length; scalar_t__ i_pts; scalar_t__ i_dts; int i_buffer; int i_flags; int p_buffer; } ;
typedef TYPE_9__ block_t ;
struct TYPE_20__ {int i_pitch; int p_pixels; } ;


 int BLOCK_FLAG_TYPE_B ;
 int BLOCK_FLAG_TYPE_I ;
 int BLOCK_FLAG_TYPE_P ;
 float CLOCK_FREQ ;
 scalar_t__ VLC_TICK_INVALID ;





 TYPE_9__* block_Alloc (int) ;
 scalar_t__ likely (TYPE_6__*) ;
 int memcpy (int ,int ,int) ;
 int msg_Dbg (TYPE_7__*,char*,int ,scalar_t__,float) ;
 scalar_t__ unlikely (int) ;
 int vlc_tick_from_samples (int ,int ) ;
 float vlc_tick_now () ;
 int x265_encoder_encode (int ,TYPE_5__**,size_t*,TYPE_4__*,TYPE_4__*) ;
 int x265_picture_init (int *,TYPE_4__*) ;

__attribute__((used)) static block_t *Encode(encoder_t *p_enc, picture_t *p_pict)
{
    encoder_sys_t *p_sys = p_enc->p_sys;
    x265_picture pic;

    x265_picture_init(&p_sys->param, &pic);

    if (likely(p_pict)) {
        pic.pts = p_pict->date;
        if (unlikely(p_sys->initial_date == VLC_TICK_INVALID)) {
            p_sys->initial_date = p_pict->date;

            p_sys->start = vlc_tick_now();

        }

        for (int i = 0; i < p_pict->i_planes; i++) {
            pic.planes[i] = p_pict->p[i].p_pixels;
            pic.stride[i] = p_pict->p[i].i_pitch;
        }
    }

    x265_nal *nal;
    uint32_t i_nal = 0;
    x265_encoder_encode(p_sys->h, &nal, &i_nal,
            likely(p_pict) ? &pic : ((void*)0), &pic);

    if (!i_nal)
        return ((void*)0);

    int i_out = 0;
    for (uint32_t i = 0; i < i_nal; i++)
        i_out += nal[i].sizeBytes;

    block_t *p_block = block_Alloc(i_out);
    if (!p_block)
        return ((void*)0);


    memcpy(p_block->p_buffer, nal[0].payload, i_out);


    p_block->i_length = vlc_tick_from_samples(
                p_enc->fmt_in.video.i_frame_rate_base,
                p_enc->fmt_in.video.i_frame_rate );

    p_block->i_pts = p_sys->initial_date + pic.poc * p_block->i_length;
    p_block->i_dts = p_sys->initial_date + p_sys->frame_count++ * p_block->i_length;

    switch (pic.sliceType)
    {
    case 130:
    case 129:
        p_block->i_flags |= BLOCK_FLAG_TYPE_I;
        break;
    case 128:
        p_block->i_flags |= BLOCK_FLAG_TYPE_P;
        break;
    case 132:
    case 131:
        p_block->i_flags |= BLOCK_FLAG_TYPE_B;
        break;
    }


    msg_Dbg(p_enc, "%zu bytes (frame %u, %.2ffps)", p_block->i_buffer,
        p_sys->frame_count, (float)p_sys->frame_count * CLOCK_FREQ / (vlc_tick_now() - p_sys->start));


    return p_block;
}

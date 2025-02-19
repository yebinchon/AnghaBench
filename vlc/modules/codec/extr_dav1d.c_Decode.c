
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_25__ {int b_progressive; int date; } ;
typedef TYPE_3__ picture_t ;
struct TYPE_26__ {TYPE_5__* p_sys; } ;
typedef TYPE_4__ decoder_t ;
struct TYPE_27__ {int c; } ;
typedef TYPE_5__ decoder_sys_t ;
struct TYPE_28__ {int i_flags; scalar_t__ i_pts; scalar_t__ i_dts; int i_buffer; int p_buffer; } ;
typedef TYPE_6__ block_t ;
struct TYPE_23__ {scalar_t__ timestamp; } ;
struct TYPE_30__ {scalar_t__ sz; TYPE_1__ m; } ;
struct TYPE_24__ {int timestamp; } ;
struct TYPE_29__ {TYPE_2__ m; TYPE_3__* allocator_data; int member_0; } ;
typedef TYPE_7__ Dav1dPicture ;
typedef TYPE_8__ Dav1dData ;


 int BLOCK_FLAG_CORRUPTED ;
 int BLOCK_FLAG_END_OF_SEQUENCE ;
 int EAGAIN ;
 int VLCDEC_ECRITICAL ;
 int VLCDEC_SUCCESS ;
 int VLC_EGENERIC ;
 scalar_t__ VLC_TICK_INVALID ;
 int block_Release (TYPE_6__*) ;
 scalar_t__ dav1d_data_wrap (TYPE_8__*,int ,int ,int ,TYPE_6__*) ;
 int dav1d_get_picture (int ,TYPE_7__*) ;
 int dav1d_picture_unref (TYPE_7__*) ;
 int dav1d_send_data (int ,TYPE_8__*) ;
 int decoder_QueueVideo (TYPE_4__*,TYPE_3__*) ;
 int msg_Err (TYPE_4__*,char*,int) ;
 TYPE_3__* picture_Clone (TYPE_3__*) ;
 int picture_Release (TYPE_3__*) ;
 int release_block ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int Decode(decoder_t *dec, block_t *block)
{
    decoder_sys_t *p_sys = dec->p_sys;

    if (block && block->i_flags & (BLOCK_FLAG_CORRUPTED))
    {
        block_Release(block);
        return VLCDEC_SUCCESS;
    }

    bool b_eos = 0;
    Dav1dData data;
    Dav1dData *p_data = ((void*)0);

    if (block)
    {
        p_data = &data;
        if (unlikely(dav1d_data_wrap(&data, block->p_buffer, block->i_buffer,
                                     release_block, block) != 0))
        {
            block_Release(block);
            return VLCDEC_ECRITICAL;
        }
        vlc_tick_t pts = block->i_pts == VLC_TICK_INVALID ? block->i_dts : block->i_pts;
        p_data->m.timestamp = pts;
        b_eos = (block->i_flags & BLOCK_FLAG_END_OF_SEQUENCE);
    }

    Dav1dPicture img = { 0 };

    bool b_draining = 0;
    int i_ret = VLCDEC_SUCCESS;
    int res;
    do {
        if( p_data )
        {
            res = dav1d_send_data(p_sys->c, p_data);
            if (res < 0 && res != -EAGAIN)
            {
                msg_Err(dec, "Decoder feed error %d!", res);
                i_ret = VLC_EGENERIC;
                break;
            }
        }

        res = dav1d_get_picture(p_sys->c, &img);
        if (res == 0)
        {
            picture_t *_pic = img.allocator_data;
            picture_t *pic = picture_Clone(_pic);
            if (unlikely(pic == ((void*)0)))
            {
                i_ret = VLC_EGENERIC;
                picture_Release(_pic);
                break;
            }
            pic->b_progressive = 1;
            pic->date = img.m.timestamp;

            decoder_QueueVideo(dec, pic);
            dav1d_picture_unref(&img);
        }
        else if (res != -EAGAIN)
        {
            msg_Err(dec, "Decoder error %d!", res);
            i_ret = VLC_EGENERIC;
            break;
        }


        if(!b_draining && (res == -EAGAIN || res == 0) && (p_data == ((void*)0)||b_eos))
        {
            b_draining = 1;
            res = 0;
        }
    } while (res == 0 || (p_data && p_data->sz != 0));


    return i_ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_15__ {TYPE_1__* p; } ;
typedef TYPE_2__ vout_thread_t ;
typedef int vlc_blender_t ;
typedef int subpicture_t ;
typedef int picture_t ;
typedef int filter_chain_t ;
struct TYPE_17__ {int i_chroma; } ;
struct TYPE_16__ {TYPE_4__ video; } ;
typedef TYPE_3__ es_format_t ;
struct TYPE_14__ {TYPE_10__* spu_blend; } ;
struct TYPE_13__ {TYPE_3__ fmt_out; } ;


 int VLC_CODEC_RGB32 ;
 int VLC_OBJECT (TYPE_2__*) ;
 int assert (TYPE_10__*) ;
 int filter_DeleteBlend (int *) ;
 int * filter_NewBlend (int ,TYPE_4__*) ;
 scalar_t__ filter_chain_AppendConverter (int *,TYPE_3__*) ;
 int filter_chain_Delete (int *) ;
 int * filter_chain_NewVideo (TYPE_2__*,int,int *) ;
 int filter_chain_Reset (int *,TYPE_3__*,TYPE_3__*) ;
 int * filter_chain_VideoFilter (int *,int *) ;
 scalar_t__ picture_BlendSubpicture (int *,int *,int *) ;
 int picture_Hold (int *) ;
 int picture_Release (int *) ;
 int video_format_FixRgb (TYPE_4__*) ;

__attribute__((used)) static picture_t *ConvertRGB32AndBlend(vout_thread_t *vout, picture_t *pic,
                                     subpicture_t *subpic)
{





    assert(vout->p->spu_blend);

    filter_chain_t *filterc = filter_chain_NewVideo(vout, 0, ((void*)0));
    if (!filterc)
        return ((void*)0);

    es_format_t src = vout->p->spu_blend->fmt_out;
    es_format_t dst = src;
    dst.video.i_chroma = VLC_CODEC_RGB32;
    video_format_FixRgb(&dst.video);

    filter_chain_Reset(filterc, &src, &dst);

    if (filter_chain_AppendConverter(filterc, &dst) != 0)
    {
        filter_chain_Delete(filterc);
        return ((void*)0);
    }

    picture_Hold(pic);
    pic = filter_chain_VideoFilter(filterc, pic);
    filter_chain_Delete(filterc);

    if (pic)
    {
        vlc_blender_t *swblend = filter_NewBlend(VLC_OBJECT(vout), &dst.video);
        if (swblend)
        {
            bool success = picture_BlendSubpicture(pic, swblend, subpic) > 0;
            filter_DeleteBlend(swblend);
            if (success)
                return pic;
        }
        picture_Release(pic);
    }
    return ((void*)0);
}

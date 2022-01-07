
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int i_chroma; } ;
typedef TYPE_1__ video_format_t ;
struct TYPE_13__ {int * context; TYPE_1__ format; } ;
typedef TYPE_2__ picture_t ;



 int VLC_CODEC_CVPX_BGRA ;
 int VLC_CODEC_CVPX_I420 ;
 int VLC_CODEC_CVPX_NV12 ;
 int VLC_CODEC_CVPX_P010 ;
 int VLC_CODEC_CVPX_UYVY ;




 int assert (int) ;
 int cvpxpic_attach (TYPE_2__*,int ) ;
 int cvpxpic_get_ref (TYPE_2__*) ;
 int picture_CopyProperties (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* picture_NewFromFormat (TYPE_1__*) ;
 int picture_Release (TYPE_2__*) ;

picture_t *
cvpxpic_unmap(picture_t *mapped_pic)
{
    video_format_t fmt = mapped_pic->format;
    switch (fmt.i_chroma)
    {
        case 128: fmt.i_chroma = VLC_CODEC_CVPX_UYVY; break;
        case 130: fmt.i_chroma = VLC_CODEC_CVPX_NV12; break;
        case 129: fmt.i_chroma = VLC_CODEC_CVPX_P010; break;
        case 131: fmt.i_chroma = VLC_CODEC_CVPX_I420; break;
        case 132: fmt.i_chroma = VLC_CODEC_CVPX_BGRA; break;
        default:
            assert(!"invalid mapped_pic fmt");
            picture_Release(mapped_pic);
            return ((void*)0);
    }
    assert(mapped_pic->context != ((void*)0));

    picture_t *hw_pic = picture_NewFromFormat(&fmt);
    if (hw_pic == ((void*)0))
    {
        picture_Release(mapped_pic);
        return ((void*)0);
    }

    cvpxpic_attach(hw_pic, cvpxpic_get_ref(mapped_pic));
    picture_CopyProperties(hw_pic, mapped_pic);
    picture_Release(mapped_pic);
    return hw_pic;
}

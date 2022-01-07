
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_chroma; } ;
typedef TYPE_1__ video_format_t ;
typedef int uint8_t ;


 int VLC_CODEC_I420 ;
 int VLC_CODEC_I420_10L ;
 int VLC_CODEC_P010 ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;

__attribute__((used)) static int CheckFmt(const video_format_t *in, const video_format_t *out,
                    bool *upload, uint8_t *pixel_bytes)
{
    *pixel_bytes = 1;
    *upload = 0;
    switch (in->i_chroma)
    {
        case 129:
            if (out->i_chroma == VLC_CODEC_I420)
                return VLC_SUCCESS;
            break;
        case 128:
            if (out->i_chroma == VLC_CODEC_P010
             || out->i_chroma == VLC_CODEC_I420_10L)
            {
                *pixel_bytes = 2;
                return VLC_SUCCESS;
            }
            break;
    }

    *upload = 1;
    switch (out->i_chroma)
    {
        case 129:
            if (in->i_chroma == VLC_CODEC_I420)
                return VLC_SUCCESS;
            break;
        case 128:
            if (in->i_chroma == VLC_CODEC_P010
             || in->i_chroma == VLC_CODEC_I420_10L)
            {
                *pixel_bytes = 2;
                return VLC_SUCCESS;
            }
            break;
    }
    return VLC_EGENERIC;
}

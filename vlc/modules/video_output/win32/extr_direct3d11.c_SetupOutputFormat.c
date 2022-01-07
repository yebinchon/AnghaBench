
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_10__ ;


struct TYPE_29__ {TYPE_7__* sys; } ;
typedef TYPE_6__ vout_display_t ;
struct TYPE_28__ {void* textureFormat; } ;
struct TYPE_27__ {TYPE_10__* textureFormat; } ;
struct TYPE_30__ {TYPE_5__ regionQuad; TYPE_4__ picQuad; } ;
typedef TYPE_7__ vout_display_sys_t ;
struct TYPE_31__ {int pixel_bits; int plane_count; int pixel_size; TYPE_3__* p; } ;
typedef TYPE_8__ vlc_chroma_description_t ;
struct TYPE_32__ {scalar_t__ i_chroma; } ;
typedef TYPE_9__ video_format_t ;
typedef int uint8_t ;
struct TYPE_23__ {int formatTexture; scalar_t__ fourcc; int name; } ;
typedef TYPE_10__ d3d_format_t ;
struct TYPE_25__ {int den; } ;
struct TYPE_24__ {int den; } ;
struct TYPE_26__ {TYPE_2__ h; TYPE_1__ w; } ;


 int DxgiFormatMask (int ,TYPE_9__*) ;
 void* GetBlendableFormat (TYPE_6__*,int ) ;
 TYPE_10__* GetDirectDecoderFormat (TYPE_6__*,scalar_t__) ;
 TYPE_10__* GetDirectRenderingFormat (TYPE_6__*,scalar_t__) ;
 void* GetDisplayFormatByDepth (TYPE_6__*,int,int,int,int,int) ;
 int VLC_CODEC_BGRA ;







 int VLC_CODEC_RGBA ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ is_d3d11_opaque (scalar_t__) ;
 int msg_Dbg (TYPE_6__*,char*,int ,char*) ;
 int msg_Err (TYPE_6__*,char*) ;
 TYPE_8__* vlc_fourcc_GetChromaDescription (scalar_t__) ;
 int vlc_fourcc_IsYUV (scalar_t__) ;

__attribute__((used)) static int SetupOutputFormat(vout_display_t *vd, video_format_t *fmt)
{
    vout_display_sys_t *sys = vd->sys;


    sys->picQuad.textureFormat = GetDirectRenderingFormat(vd, fmt->i_chroma);


    const d3d_format_t *decoder_format = ((void*)0);
    if ( !sys->picQuad.textureFormat )
    {
        uint8_t bits_per_channel;
        uint8_t widthDenominator, heightDenominator;
        switch (fmt->i_chroma)
        {
        case 134:
        case 130:
            bits_per_channel = 8;
            widthDenominator = heightDenominator = 2;
            break;
        case 131:
        case 132:
            bits_per_channel = 8;
            widthDenominator = heightDenominator = 1;
            break;
        case 133:
        case 129:
            bits_per_channel = 10;
            widthDenominator = heightDenominator = 2;
            break;
        case 128:
            bits_per_channel = 16;
            widthDenominator = heightDenominator = 2;
            break;
        default:
            {
                const vlc_chroma_description_t *p_format = vlc_fourcc_GetChromaDescription(fmt->i_chroma);
                if (p_format == ((void*)0))
                {
                    bits_per_channel = 8;
                    widthDenominator = heightDenominator = 2;
                }
                else
                {
                    bits_per_channel = p_format->pixel_bits == 0 ? 8 : p_format->pixel_bits /
                                                                   (p_format->plane_count==1 ? p_format->pixel_size : 1);
                    widthDenominator = heightDenominator = 1;
                    for (size_t i=0; i<p_format->plane_count; i++)
                    {
                        if (widthDenominator < p_format->p[i].w.den)
                            widthDenominator = p_format->p[i].w.den;
                        if (heightDenominator < p_format->p[i].h.den)
                            heightDenominator = p_format->p[1].h.den;
                    }
                }
            }
            break;
        }


        if ( is_d3d11_opaque(fmt->i_chroma) )
            decoder_format = GetDirectDecoderFormat(vd, fmt->i_chroma);
        else
            decoder_format = sys->picQuad.textureFormat;

        bool is_rgb = !vlc_fourcc_IsYUV(fmt->i_chroma);
        sys->picQuad.textureFormat = GetDisplayFormatByDepth(vd, bits_per_channel,
                                                             widthDenominator, heightDenominator,
                                                             decoder_format!=((void*)0), is_rgb);
        if (!sys->picQuad.textureFormat && is_rgb)
            sys->picQuad.textureFormat = GetDisplayFormatByDepth(vd, bits_per_channel,
                                                                 widthDenominator, heightDenominator,
                                                                 decoder_format!=((void*)0), 0);
    }


    if ( !sys->picQuad.textureFormat )
        sys->picQuad.textureFormat = GetDisplayFormatByDepth(vd, 0, 0, 0, 0, 0);

    if ( !sys->picQuad.textureFormat )
    {
       msg_Err(vd, "Could not get a suitable texture pixel format");
       return VLC_EGENERIC;
    }

    msg_Dbg( vd, "Using pixel format %s for chroma %4.4s", sys->picQuad.textureFormat->name,
                 (char *)&fmt->i_chroma );

    fmt->i_chroma = decoder_format ? decoder_format->fourcc : sys->picQuad.textureFormat->fourcc;
    DxgiFormatMask( sys->picQuad.textureFormat->formatTexture, fmt );


    sys->regionQuad.textureFormat = GetBlendableFormat(vd, VLC_CODEC_RGBA);
    if (!sys->regionQuad.textureFormat)
        sys->regionQuad.textureFormat = GetBlendableFormat(vd, VLC_CODEC_BGRA);

    return VLC_SUCCESS;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int color_range; int space; int transfer; int primaries; int chroma_location; } ;
typedef TYPE_1__ video_format_t ;
struct TYPE_6__ {int chroma_sample_location; int color_primaries; void* color_trc; int colorspace; int color_range; } ;
typedef TYPE_2__ AVCodecContext ;


 int AVCHROMA_LOC_BOTTOM ;
 int AVCHROMA_LOC_BOTTOMLEFT ;
 int AVCHROMA_LOC_CENTER ;
 int AVCHROMA_LOC_LEFT ;
 int AVCHROMA_LOC_TOP ;
 int AVCHROMA_LOC_TOPLEFT ;
 int AVCHROMA_LOC_UNSPECIFIED ;
 int AVCOL_PRI_BT2020 ;
 int AVCOL_PRI_BT470BG ;
 int AVCOL_PRI_BT470M ;
 int AVCOL_PRI_BT709 ;
 int AVCOL_PRI_SMPTE170M ;
 int AVCOL_PRI_UNSPECIFIED ;
 int AVCOL_RANGE_JPEG ;
 int AVCOL_RANGE_MPEG ;
 int AVCOL_RANGE_UNSPECIFIED ;
 int AVCOL_SPC_BT2020_CL ;
 int AVCOL_SPC_BT470BG ;
 int AVCOL_SPC_BT709 ;
 int AVCOL_SPC_UNSPECIFIED ;
 void* AVCOL_TRC_BT709 ;
 void* AVCOL_TRC_GAMMA22 ;
 void* AVCOL_TRC_GAMMA28 ;
 void* AVCOL_TRC_LINEAR ;
 void* AVCOL_TRC_SMPTE240M ;
 void* AVCOL_TRC_SMPTEST2084 ;
 void* AVCOL_TRC_UNSPECIFIED ;
__attribute__((used)) static inline void set_video_color_settings( const video_format_t *p_fmt, AVCodecContext *p_context )
{
    switch( p_fmt->color_range )
    {
    case 140:
        p_context->color_range = AVCOL_RANGE_JPEG;
        break;
    case 139:
        p_context->color_range = AVCOL_RANGE_MPEG;
    case 138:
        break;
    default:
        p_context->color_range = AVCOL_RANGE_UNSPECIFIED;
        break;
    }

    switch( p_fmt->space )
    {
        case 135:
            p_context->colorspace = AVCOL_SPC_BT709;
            break;
        case 136:
            p_context->colorspace = AVCOL_SPC_BT470BG;
            break;
        case 137:
            p_context->colorspace = AVCOL_SPC_BT2020_CL;
            break;
        default:
            p_context->colorspace = AVCOL_SPC_UNSPECIFIED;
            break;
    }

    switch( p_fmt->transfer )
    {
        case 131:
            p_context->color_trc = AVCOL_TRC_LINEAR;
            break;
        case 128:
            p_context->color_trc = AVCOL_TRC_GAMMA22;
            break;
        case 134:
            p_context->color_trc = AVCOL_TRC_GAMMA28;
            break;
        case 133:
            p_context->color_trc = AVCOL_TRC_GAMMA22;
            break;
        case 132:
            p_context->color_trc = AVCOL_TRC_BT709;
            break;
        case 129:
            p_context->color_trc = AVCOL_TRC_SMPTEST2084;
            break;
        case 130:
            p_context->color_trc = AVCOL_TRC_SMPTE240M;
            break;
        default:
            p_context->color_trc = AVCOL_TRC_UNSPECIFIED;
            break;
    }
    switch( p_fmt->primaries )
    {
        case 144:
            p_context->color_primaries = AVCOL_PRI_SMPTE170M;
            break;
        case 143:
            p_context->color_primaries = AVCOL_PRI_BT470BG;
            break;
        case 142:
            p_context->color_primaries = AVCOL_PRI_BT709;
            break;
        case 145:
            p_context->color_primaries = AVCOL_PRI_BT2020;
            break;
        case 141:
            p_context->color_primaries = AVCOL_PRI_BT470M;
            break;
        default:
            p_context->color_primaries = AVCOL_PRI_UNSPECIFIED;
            break;
    }
    switch( p_fmt->chroma_location )
    {
        case 148:
            p_context->chroma_sample_location = AVCHROMA_LOC_LEFT;
            break;
        case 149:
            p_context->chroma_sample_location = AVCHROMA_LOC_CENTER;
            break;
        case 146:
            p_context->chroma_sample_location = AVCHROMA_LOC_TOPLEFT;
            break;
        case 147:
            p_context->chroma_sample_location = AVCHROMA_LOC_TOP;
            break;
        case 150:
            p_context->chroma_sample_location = AVCHROMA_LOC_BOTTOMLEFT;
            break;
        case 151:
            p_context->chroma_sample_location = AVCHROMA_LOC_BOTTOM;
            break;
        default:
            p_context->chroma_sample_location = AVCHROMA_LOC_UNSPECIFIED;
            break;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vlc_fourcc_t ;
struct TYPE_3__ {int i_codec; int i_extra; } ;
typedef TYPE_1__ es_format_t ;


 int BRAND_smoo ;
 int msg_Err (int *,char*) ;
 int msg_Warn (int *,char*) ;

bool mp4mux_CanMux(vlc_object_t *p_obj, const es_format_t *p_fmt,
                   vlc_fourcc_t i_brand, bool b_fragmented)
{
    switch(p_fmt->i_codec)
    {
    case 156:
    case 152:
    case 151:
    case 142:
    case 141:
    case 140:
    case 143:
    case 139:
    case 144:
    case 145:
    case 147:
    case 146:
    case 136:
    case 135:
    case 150:
    case 155:
    case 154:
    case 128:
    case 129:
    case 132:
    case 130:
    case 153:
        break;
    case 149:
        if(!p_fmt->i_extra && p_obj)
            msg_Warn(p_obj, "H264 muxing from AnnexB source will set an incorrect default profile");
        break;
    case 148:
        if(!p_fmt->i_extra)
        {
            if(p_obj)
                msg_Err(p_obj, "HEVC muxing from AnnexB source is unsupported");
            return 0;
        }
        break;
    case 137:
        if(p_obj)
            msg_Warn(p_obj, "subtitle track added like in .mov (even when creating .mp4)");
        return !b_fragmented;
    case 134:


            return i_brand == BRAND_smoo;
    case 138:
    case 133:
    case 131:
        return !b_fragmented;
    default:
        return 0;
    }
    return 1;
}

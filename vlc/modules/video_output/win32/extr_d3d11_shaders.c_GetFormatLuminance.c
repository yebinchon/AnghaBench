
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int transfer; } ;
typedef TYPE_1__ video_format_t ;


 float DEFAULT_BRIGHTNESS ;
 float MAX_HLG_BRIGHTNESS ;
 float MAX_PQ_BRIGHTNESS ;






 int msg_Dbg (int *,char*,int) ;

float GetFormatLuminance(vlc_object_t *o, const video_format_t *fmt)
{
    switch (fmt->transfer)
    {
        case 129:

            return MAX_PQ_BRIGHTNESS;
        case 130:
            return MAX_HLG_BRIGHTNESS;
        case 133:
        case 132:
        case 131:
        case 128:
            return DEFAULT_BRIGHTNESS;
        default:
            msg_Dbg(o, "unhandled source transfer %d", fmt->transfer);
            return DEFAULT_BRIGHTNESS;
    }
}

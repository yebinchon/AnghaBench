
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int uint8_t ;
struct TYPE_4__ {int i_original_picture_width; int i_original_picture_height; int b_absolute; int b_ephemer; int i_start; int i_stop; int * p_region; } ;
typedef TYPE_1__ subpicture_t ;
typedef int subpicture_region_t ;
typedef int decoder_t ;


 int * DecodeSimpleBitmap (int *,int const*,int) ;
 int GetWBE (int const*) ;
 int VLC_TICK_FROM_MS (int) ;
 int VLC_TICK_FROM_US (int) ;
 TYPE_1__* decoder_NewSubpicture (int *,int *) ;
 int msg_Err (int *,char*) ;
 int msg_Warn (int *,char*) ;
 int subpicture_region_Delete (int *) ;

__attribute__((used)) static subpicture_t *DecodeSubtitleMessage(decoder_t *dec,
                                           const uint8_t *data, int size,
                                           vlc_tick_t date)
{
    if (size < 12)
        goto error;


    bool pre_clear_display = data[3] & 0x80;
    int display_standard = data[3] & 0x1f;
    int subtitle_type = data[8] >> 4;
    int display_duration = ((data[8] & 0x07) << 8) | data[9];
    int block_length = GetWBE(&data[10]);

    size -= 12;
    data += 12;

    if (block_length > size)
        goto error;

    if (subtitle_type == 1) {
        subpicture_region_t *region = DecodeSimpleBitmap(dec, data, block_length);
        if (!region)
            goto error;
        subpicture_t *sub = decoder_NewSubpicture(dec, ((void*)0));
        if (!sub) {
            subpicture_region_Delete(region);
            return ((void*)0);
        }
        vlc_tick_t frame_duration;
        switch (display_standard) {
        case 0:
            sub->i_original_picture_width = 720;
            sub->i_original_picture_height = 480;
            frame_duration = VLC_TICK_FROM_US(33367);
            break;
        case 1:
            sub->i_original_picture_width = 720;
            sub->i_original_picture_height = 576;
            frame_duration = VLC_TICK_FROM_MS(40);
            break;
        case 2:
            sub->i_original_picture_width = 1280;
            sub->i_original_picture_height = 720;
            frame_duration = VLC_TICK_FROM_US(16683);
            break;
        case 3:
            sub->i_original_picture_width = 1920;
            sub->i_original_picture_height = 1080;
            frame_duration = VLC_TICK_FROM_US(16683);
            break;
        default:
            msg_Warn(dec, "Unknown display standard");
            sub->i_original_picture_width = 0;
            sub->i_original_picture_height = 0;
            frame_duration = VLC_TICK_FROM_MS(40);
            break;
        }
        sub->b_absolute = 1;
        if (!pre_clear_display)
            msg_Warn(dec, "SCTE-27 subtitles without pre_clear_display flag are not well supported");
        sub->b_ephemer = 1;
        sub->i_start = date;
        sub->i_stop = date + display_duration * frame_duration;
        sub->p_region = region;

        return sub;
    } else {

        return ((void*)0);
    }

error:
    msg_Err(dec, "corrupted subtitle_message");
    return ((void*)0);
}

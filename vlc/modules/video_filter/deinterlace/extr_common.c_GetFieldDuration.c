
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_7__ {scalar_t__ i_frame_rate; int i_frame_rate_base; } ;
typedef TYPE_2__ video_format_t ;
struct deinterlace_ctx {TYPE_1__* meta; } ;
struct TYPE_8__ {int date; } ;
typedef TYPE_3__ picture_t ;
struct TYPE_6__ {scalar_t__ pi_date; scalar_t__ pi_nb_fields; } ;


 int METADATA_SIZE ;
 scalar_t__ VLC_TICK_INVALID ;
 int vlc_tick_from_samples (int ,scalar_t__) ;

vlc_tick_t GetFieldDuration(const struct deinterlace_ctx *p_context,
                         const video_format_t *fmt, const picture_t *p_pic )
{
    vlc_tick_t i_field_dur = 0;


    int i = 0;
    int iend = METADATA_SIZE-1;


    for( ; i < iend; i++ )
        if( p_context->meta[i].pi_date != VLC_TICK_INVALID )
            break;
    if( i < iend )
    {


        int i_fields_total = 0;
        for( int j = i ; j < iend; j++ )
            i_fields_total += p_context->meta[j].pi_nb_fields;

        i_field_dur = (p_pic->date - p_context->meta[i].pi_date) / i_fields_total;
    }
    else if (fmt->i_frame_rate)
        i_field_dur = vlc_tick_from_samples( fmt->i_frame_rate_base, fmt->i_frame_rate);






    return i_field_dur;
}

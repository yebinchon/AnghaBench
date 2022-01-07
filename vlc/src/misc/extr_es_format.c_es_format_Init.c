
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_fourcc_t ;
struct TYPE_4__ {int i_cat; int i_profile; int i_level; int i_id; int b_packetized; int * p_extra; int video; int * p_extra_languages; int * psz_description; int * psz_language; int i_priority; int i_codec; } ;
typedef TYPE_1__ es_format_t ;


 int ES_PRIORITY_SELECTABLE_MIN ;
 int VIDEO_ES ;
 int memset (TYPE_1__*,int ,int) ;
 int video_format_Init (int *,int ) ;

void es_format_Init( es_format_t *fmt,
                     int i_cat, vlc_fourcc_t i_codec )
{
    memset(fmt, 0, sizeof (*fmt));
    fmt->i_cat = i_cat;
    fmt->i_codec = i_codec;
    fmt->i_profile = -1;
    fmt->i_level = -1;
    fmt->i_id = -1;
    fmt->i_priority = ES_PRIORITY_SELECTABLE_MIN;
    fmt->psz_language = ((void*)0);
    fmt->psz_description = ((void*)0);
    fmt->p_extra_languages = ((void*)0);

    if (fmt->i_cat == VIDEO_ES)
        video_format_Init(&fmt->video, 0);

    fmt->b_packetized = 1;
    fmt->p_extra = ((void*)0);
}

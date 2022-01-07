
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int video_filter; int deinterlace; int crop; int aspect_ratio; } ;
typedef TYPE_1__ vlc_ml_playback_states_all ;


 int free (int ) ;

void vlc_ml_playback_states_all_release( vlc_ml_playback_states_all* prefs )
{
    free( prefs->aspect_ratio );
    free( prefs->crop );
    free( prefs->deinterlace );
    free( prefs->video_filter );
}

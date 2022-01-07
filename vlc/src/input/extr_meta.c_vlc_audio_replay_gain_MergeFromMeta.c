
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_meta_t ;
struct TYPE_3__ {int* pb_gain; int* pb_peak; void** pf_peak; void** pf_gain; } ;
typedef TYPE_1__ audio_replay_gain_t ;


 size_t AUDIO_REPLAY_GAIN_ALBUM ;
 size_t AUDIO_REPLAY_GAIN_TRACK ;
 void* us_atof (char const*) ;
 char* vlc_meta_GetExtra (int const*,char*) ;

void vlc_audio_replay_gain_MergeFromMeta( audio_replay_gain_t *p_dst,
                                          const vlc_meta_t *p_meta )
{
    const char * psz_value;

    if( !p_meta )
        return;

    if( (psz_value = vlc_meta_GetExtra(p_meta, "REPLAYGAIN_TRACK_GAIN")) ||
        (psz_value = vlc_meta_GetExtra(p_meta, "RG_RADIO")) )
    {
        p_dst->pb_gain[AUDIO_REPLAY_GAIN_TRACK] = 1;
        p_dst->pf_gain[AUDIO_REPLAY_GAIN_TRACK] = us_atof( psz_value );
    }

    if( (psz_value = vlc_meta_GetExtra(p_meta, "REPLAYGAIN_TRACK_PEAK" )) ||
             (psz_value = vlc_meta_GetExtra(p_meta, "RG_PEAK" )) )
    {
        p_dst->pb_peak[AUDIO_REPLAY_GAIN_TRACK] = 1;
        p_dst->pf_peak[AUDIO_REPLAY_GAIN_TRACK] = us_atof( psz_value );
    }

    if( (psz_value = vlc_meta_GetExtra(p_meta, "REPLAYGAIN_ALBUM_GAIN" )) ||
             (psz_value = vlc_meta_GetExtra(p_meta, "RG_AUDIOPHILE" )) )
    {
        p_dst->pb_gain[AUDIO_REPLAY_GAIN_ALBUM] = 1;
        p_dst->pf_gain[AUDIO_REPLAY_GAIN_ALBUM] = us_atof( psz_value );
    }

    if( (psz_value = vlc_meta_GetExtra(p_meta, "REPLAYGAIN_ALBUM_PEAK" )) )
    {
        p_dst->pb_peak[AUDIO_REPLAY_GAIN_ALBUM] = 1;
        p_dst->pf_peak[AUDIO_REPLAY_GAIN_ALBUM] = us_atof( psz_value );
    }
}

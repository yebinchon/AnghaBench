
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_9__ ;
typedef struct TYPE_36__ TYPE_8__ ;
typedef struct TYPE_35__ TYPE_7__ ;
typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_10__ ;


struct TYPE_37__ {double* pf_gain; int* pb_gain; double* pf_peak; int* pb_peak; } ;
struct TYPE_32__ {scalar_t__ i_frame_rate_base; scalar_t__ i_frame_rate; } ;
struct TYPE_33__ {int i_cat; TYPE_9__ audio_replay_gain; TYPE_4__ video; } ;
struct TYPE_34__ {scalar_t__ i_chunk_count; char* i_track_ID; TYPE_5__ fmt; TYPE_10__* p_sample; int p_stsd; TYPE_1__* chunk; } ;
typedef TYPE_6__ mp4_track_t ;
typedef int es_out_id_t ;
struct TYPE_35__ {int out; TYPE_8__* p_sys; } ;
typedef TYPE_7__ demux_t ;
struct TYPE_36__ {float f_fps; int p_meta; scalar_t__ b_fragmented; } ;
typedef TYPE_8__ demux_sys_t ;
typedef TYPE_9__ audio_replay_gain_t ;
struct TYPE_31__ {TYPE_2__* p_frma; int p_payload; } ;
struct TYPE_30__ {scalar_t__ i_type; } ;
struct TYPE_29__ {unsigned int i_sample_description_index; } ;
struct TYPE_28__ {int i_handler; TYPE_3__ data; scalar_t__ i_type; } ;
typedef TYPE_10__ MP4_Box_t ;


 int ATOM_clcp ;
 int ATOM_sbtl ;
 int ATOM_soun ;
 int ATOM_subt ;
 int ATOM_text ;
 int ATOM_vide ;

 size_t AUDIO_REPLAY_GAIN_TRACK ;
 int * MP4_AddTrackES (int ,TYPE_6__*) ;
 TYPE_10__* MP4_BoxGet (TYPE_10__*,char*,...) ;

 int SetupAudioES (TYPE_7__*,TYPE_6__*,TYPE_10__*) ;
 int SetupSpuES (TYPE_7__*,TYPE_6__*,TYPE_10__*) ;
 int SetupVideoES (TYPE_7__*,TYPE_6__*,TYPE_10__*) ;
 int TrackGetESSampleRate (TYPE_7__*,scalar_t__*,scalar_t__*,TYPE_6__*,unsigned int,unsigned int) ;

 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Warn (TYPE_7__*,char*,char*) ;
 double us_atof (char const*) ;
 char* vlc_meta_GetExtra (int ,char*) ;

__attribute__((used)) static int TrackCreateES( demux_t *p_demux, mp4_track_t *p_track,
                          unsigned int i_chunk, es_out_id_t **pp_es )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    unsigned int i_sample_description_index;

    if( p_sys->b_fragmented || p_track->i_chunk_count == 0 )
        i_sample_description_index = 1;
    else
        i_sample_description_index =
                p_track->chunk[i_chunk].i_sample_description_index;

    if( pp_es )
        *pp_es = ((void*)0);

    if( !i_sample_description_index )
    {
        msg_Warn( p_demux, "invalid SampleEntry index (track[Id 0x%x])",
                  p_track->i_track_ID );
        return VLC_EGENERIC;
    }

    MP4_Box_t *p_sample = MP4_BoxGet( p_track->p_stsd, "[%d]",
                            i_sample_description_index - 1 );

    if( !p_sample ||
        ( !p_sample->data.p_payload && p_track->fmt.i_cat != 129 ) )
    {
        msg_Warn( p_demux, "cannot find SampleEntry (track[Id 0x%x])",
                  p_track->i_track_ID );
        return VLC_EGENERIC;
    }

    p_track->p_sample = p_sample;

    MP4_Box_t *p_frma;
    if( ( p_frma = MP4_BoxGet( p_track->p_sample, "sinf/frma" ) ) && p_frma->data.p_frma )
    {
        msg_Warn( p_demux, "Original Format Box: %4.4s", (char *)&p_frma->data.p_frma->i_type );

        p_sample->i_type = p_frma->data.p_frma->i_type;
    }


    switch( p_track->fmt.i_cat )
    {
    case 128:
        if ( p_sample->i_handler != ATOM_vide ||
             !SetupVideoES( p_demux, p_track, p_sample ) )
            return VLC_EGENERIC;


        TrackGetESSampleRate( p_demux,
                              &p_track->fmt.video.i_frame_rate,
                              &p_track->fmt.video.i_frame_rate_base,
                              p_track, i_sample_description_index, i_chunk );

        p_sys->f_fps = (float)p_track->fmt.video.i_frame_rate /
                       (float)p_track->fmt.video.i_frame_rate_base;

        break;

    case 130:
        if ( p_sample->i_handler != ATOM_soun ||
             !SetupAudioES( p_demux, p_track, p_sample ) )
            return VLC_EGENERIC;
        if( p_sys->p_meta )
        {
            audio_replay_gain_t *p_arg = &p_track->fmt.audio_replay_gain;
            const char *psz_meta = vlc_meta_GetExtra( p_sys->p_meta, "replaygain_track_gain" );
            if( psz_meta )
            {
                double f_gain = us_atof( psz_meta );
                p_arg->pf_gain[AUDIO_REPLAY_GAIN_TRACK] = f_gain;
                p_arg->pb_gain[AUDIO_REPLAY_GAIN_TRACK] = f_gain != 0;
            }
            psz_meta = vlc_meta_GetExtra( p_sys->p_meta, "replaygain_track_peak" );
            if( psz_meta )
            {
                double f_gain = us_atof( psz_meta );
                p_arg->pf_peak[AUDIO_REPLAY_GAIN_TRACK] = f_gain;
                p_arg->pb_peak[AUDIO_REPLAY_GAIN_TRACK] = f_gain > 0;
            }
        }
        break;

    case 129:
        if ( ( p_sample->i_handler != ATOM_text &&
               p_sample->i_handler != ATOM_subt &&
               p_sample->i_handler != ATOM_sbtl &&
               p_sample->i_handler != ATOM_clcp ) ||
             !SetupSpuES( p_demux, p_track, p_sample ) )
           return VLC_EGENERIC;
        break;

    default:
        break;
    }

    if( pp_es )
        *pp_es = MP4_AddTrackES( p_demux->out, p_track );

    return ( !pp_es || *pp_es ) ? VLC_SUCCESS : VLC_EGENERIC;
}

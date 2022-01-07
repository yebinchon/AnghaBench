
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int psz_url ;
struct TYPE_10__ {int* pb_gain; float* pf_gain; int* pb_peak; float* pf_peak; } ;
struct TYPE_11__ {TYPE_1__ audio_replay_gain; } ;
typedef TYPE_2__ es_format_t ;
struct TYPE_12__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ demux_t ;
struct TYPE_13__ {int i_attachments; int i_seekpoints; int updates; int * p_meta; TYPE_6__** attachments; int pp_seekpoints; } ;
typedef TYPE_4__ demux_sys_t ;
struct TYPE_14__ {char* psz_name; } ;


 int AUDIO_REPLAY_GAIN_MAX ;
 int INPUT_UPDATE_TITLE_LIST ;
 int msg_Dbg (TYPE_3__*,char*,int,float) ;
 int snprintf (char*,int,char*,char*) ;
 int vlc_meta_ArtworkURL ;
 int vlc_meta_Set (int *,int ,char*) ;
 int vorbis_ParseComment (TYPE_2__*,int **,void const*,unsigned int,int*,TYPE_6__***,int*,int*,int*,int *,float**,float**) ;

__attribute__((used)) static void Ogg_ExtractComments( demux_t *p_demux, es_format_t *p_fmt,
                                 const void *p_headers, unsigned i_headers )
{
    demux_sys_t *p_ogg = p_demux->p_sys;
    int i_cover_score = 0;
    int i_cover_idx = 0;
    float pf_replay_gain[AUDIO_REPLAY_GAIN_MAX];
    float pf_replay_peak[AUDIO_REPLAY_GAIN_MAX];
    for(int i=0; i< AUDIO_REPLAY_GAIN_MAX; i++ )
    {
        pf_replay_gain[i] = 0;
        pf_replay_peak[i] = 0;
    }
    vorbis_ParseComment( p_fmt, &p_ogg->p_meta, p_headers, i_headers,
                         &p_ogg->i_attachments, &p_ogg->attachments,
                         &i_cover_score, &i_cover_idx,
                         &p_ogg->i_seekpoints, &p_ogg->pp_seekpoints,
                         &pf_replay_gain, &pf_replay_peak );
    if( p_ogg->p_meta != ((void*)0) && i_cover_idx < p_ogg->i_attachments )
    {
        char psz_url[128];
        snprintf( psz_url, sizeof(psz_url), "attachment://%s",
                  p_ogg->attachments[i_cover_idx]->psz_name );
        vlc_meta_Set( p_ogg->p_meta, vlc_meta_ArtworkURL, psz_url );
    }

    for ( int i=0; i<AUDIO_REPLAY_GAIN_MAX;i++ )
    {
        if ( pf_replay_gain[i] != 0 )
        {
            p_fmt->audio_replay_gain.pb_gain[i] = 1;
            p_fmt->audio_replay_gain.pf_gain[i] = pf_replay_gain[i];
            msg_Dbg( p_demux, "setting replay gain %d to %f", i, pf_replay_gain[i] );
        }
        if ( pf_replay_peak[i] != 0 )
        {
            p_fmt->audio_replay_gain.pb_peak[i] = 1;
            p_fmt->audio_replay_gain.pf_peak[i] = pf_replay_peak[i];
            msg_Dbg( p_demux, "setting replay peak %d to %f", i, pf_replay_gain[i] );
        }
    }

    if( p_ogg->i_seekpoints > 1 )
    {
        p_ogg->updates |= INPUT_UPDATE_TITLE_LIST;
    }
}

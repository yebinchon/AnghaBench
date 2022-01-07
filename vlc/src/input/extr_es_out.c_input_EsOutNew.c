
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int input_thread_t ;
struct TYPE_5__ {int * cbs; } ;
typedef TYPE_1__ es_out_t ;
struct TYPE_6__ {int b_active; int i_pause_date; float rate; int b_buffering; int i_preroll_end; int i_prev_stream_level; TYPE_1__ out; int i_master_source_cat; int i_group_id; int sub; int audio; int video; int es_slaves; int es; int programs; int i_mode; int * p_input; int lock; } ;
typedef TYPE_2__ es_out_sys_t ;
typedef enum vlc_clock_master_source { ____Placeholder_vlc_clock_master_source } vlc_clock_master_source ;


 int AUDIO_ES ;
 int ES_OUT_ES_POLICY_EXCLUSIVE ;
 int ES_OUT_MODE_NONE ;
 int EsOutPropsInit (int *,int,int *,int ,char*,char*,char*,char*) ;
 int UNKNOWN_ES ;


 TYPE_2__* calloc (int,int) ;
 int es_out_cbs ;
 int var_GetInteger (int *,char*) ;
 int var_InheritInteger (int *,char*) ;
 int vlc_list_init (int *) ;
 int vlc_mutex_init (int *) ;

es_out_t *input_EsOutNew( input_thread_t *p_input, float rate )
{
    es_out_sys_t *p_sys = calloc( 1, sizeof( *p_sys ) );
    if( !p_sys )
        return ((void*)0);

    p_sys->out.cbs = &es_out_cbs;

    vlc_mutex_init( &p_sys->lock );
    p_sys->p_input = p_input;

    p_sys->b_active = 0;
    p_sys->i_mode = ES_OUT_MODE_NONE;

    vlc_list_init(&p_sys->programs);
    vlc_list_init(&p_sys->es);
    vlc_list_init(&p_sys->es_slaves);


    EsOutPropsInit( &p_sys->video, 1, p_input, ES_OUT_ES_POLICY_EXCLUSIVE,
                    "video-track-id", "video-track", ((void*)0), ((void*)0) );
    EsOutPropsInit( &p_sys->audio, 1, p_input, ES_OUT_ES_POLICY_EXCLUSIVE,
                    "audio-track-id", "audio-track", "audio-language", "audio" );
    EsOutPropsInit( &p_sys->sub, 0, p_input, ES_OUT_ES_POLICY_EXCLUSIVE,
                    "sub-track-id", "sub-track", "sub-language", "sub" );

    p_sys->i_group_id = var_GetInteger( p_input, "program" );

    enum vlc_clock_master_source master_source =
        var_InheritInteger( p_input, "clock-master" );
    switch( master_source )
    {
        case 129:
            p_sys->i_master_source_cat = AUDIO_ES;
            break;
        case 128:
        default:
            p_sys->i_master_source_cat = UNKNOWN_ES;
            break;
    }

    p_sys->i_pause_date = -1;

    p_sys->rate = rate;

    p_sys->b_buffering = 1;
    p_sys->i_preroll_end = -1;
    p_sys->i_prev_stream_level = -1;

    return &p_sys->out;
}

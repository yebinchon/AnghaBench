
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_19__ {int i_nb_inputs; TYPE_2__** pp_inputs; } ;
typedef TYPE_7__ sout_mux_t ;
struct TYPE_20__ {TYPE_6__* p_fmt; scalar_t__ p_sys; } ;
typedef TYPE_8__ sout_input_t ;
struct TYPE_15__ {int i_frame_rate; int i_frame_rate_base; } ;
struct TYPE_16__ {int i_codec; TYPE_3__ video; int i_cat; } ;
struct TYPE_21__ {unsigned int i_serial_no; TYPE_4__ fmt; } ;
typedef TYPE_9__ ogg_stream_t ;
struct TYPE_17__ {int i_rate; } ;
struct TYPE_18__ {scalar_t__ i_priority; int i_cat; int const i_codec; int i_extra; scalar_t__ p_extra; TYPE_5__ audio; } ;
struct TYPE_14__ {TYPE_1__* p_fmt; } ;
struct TYPE_13__ {int i_cat; int i_priority; } ;



 int ES_PRIORITY_MIN ;
 scalar_t__ ES_PRIORITY_NOT_SELECTABLE ;
 int ES_PRIORITY_SELECTABLE_MIN ;
 unsigned int FISBONE_BASE_OFFSET ;
 long FISBONE_BASE_SIZE ;
 int SPU_ES ;
 int SetDWLE (int *,unsigned int) ;
 int SetQWLE (int *,int) ;
 int __MAX (int ,int) ;
 int asprintf (char**,char*,char const*) ;
 int * calloc (long,int) ;
 int free (char*) ;
 int memcpy (int *,char*,int) ;
 int msg_Warn (TYPE_7__*,char*,int ,char const*) ;
 int strlen (char*) ;
 int vlc_fourcc_GetDescription (int ,int) ;
 unsigned int xiph_CountUnknownHeaders (scalar_t__,int ,int const) ;

__attribute__((used)) static void OggGetSkeletonFisbone( uint8_t **pp_buffer, long *pi_size,
                                   sout_input_t *p_input, sout_mux_t *p_mux )
{
    uint8_t *psz_header;
    uint8_t *p_buffer;
    const char *psz_value = ((void*)0);
    ogg_stream_t *p_stream = (ogg_stream_t *) p_input->p_sys;
    struct
    {
        char *psz_content_type;
        char *psz_role;
        long int i_size;
        unsigned int i_count;
    } headers = { ((void*)0), ((void*)0), 0, 0 };
    *pi_size = 0;

    switch( p_stream->fmt.i_codec )
    {
        case 129:
            psz_value = "audio/vorbis";
            break;
        case 130:
            psz_value = "video/theora";
            break;
        case 134:
            psz_value = "video/daala";
            break;
        case 131:
            psz_value = "audio/speex";
            break;
        case 133:
            psz_value = "audio/flac";
            break;
        case 135:
            psz_value = "text/cmml";
            break;
        case 132:
            psz_value = "application/kate";
            break;
        case 128:
            psz_value = "video/x-vp8";
            break;
        default:
            psz_value = "application/octet-stream";
            msg_Warn( p_mux, "Unknown fourcc for stream %s, setting Content-Type to %s",
                  vlc_fourcc_GetDescription( p_stream->fmt.i_cat, p_stream->fmt.i_codec ),
                  psz_value );
    }


    if ( asprintf( &headers.psz_content_type, "Content-Type: %s\r\n", psz_value ) != -1 )
    {
        headers.i_size += strlen( headers.psz_content_type );
        headers.i_count++;
    }


    if ( p_input->p_fmt->i_priority > ES_PRIORITY_NOT_SELECTABLE )
    {
        int i_max_prio = ES_PRIORITY_MIN;
        for ( int i=0; i< p_mux->i_nb_inputs; i++ )
        {
            if ( p_mux->pp_inputs[i]->p_fmt->i_cat != p_input->p_fmt->i_cat ) continue;
            i_max_prio = __MAX( p_mux->pp_inputs[i]->p_fmt->i_priority, i_max_prio );
        }

        psz_value = ((void*)0);
        if ( p_input->p_fmt->i_cat == 137 || p_input->p_fmt->i_cat == 136 )
        {
            if ( p_input->p_fmt->i_priority == i_max_prio && i_max_prio >= ES_PRIORITY_SELECTABLE_MIN )
                psz_value = ( p_input->p_fmt->i_cat == 136 ) ?
                            "video/main" : "audio/main";
            else
                psz_value = ( p_input->p_fmt->i_cat == 136 ) ?
                            "video/alternate" : "audio/alternate";
        }
        else if ( p_input->p_fmt->i_cat == SPU_ES )
        {
            psz_value = ( p_input->p_fmt->i_codec == 132 ) ?
                        "text/karaoke" : "text/subtitle";
        }

        if ( psz_value && asprintf( &headers.psz_role, "Role: %s\r\n", psz_value ) != -1 )
        {
            headers.i_size += strlen( headers.psz_role );
            headers.i_count++;
        }
    }

    *pp_buffer = calloc( FISBONE_BASE_SIZE + headers.i_size, sizeof(uint8_t) );
    if ( !*pp_buffer ) return;
    p_buffer = *pp_buffer;

    memcpy( p_buffer, "fisbone", 8 );
    SetDWLE( &p_buffer[8], FISBONE_BASE_OFFSET );
    SetDWLE( &p_buffer[12], p_stream->i_serial_no );
    SetDWLE( &p_buffer[16], headers.i_count );


    switch ( p_input->p_fmt->i_cat )
    {
        case 136:
            SetQWLE( &(*pp_buffer)[20], p_stream->fmt.video.i_frame_rate );
            SetQWLE( &(*pp_buffer)[28], p_stream->fmt.video.i_frame_rate_base );
        break;
        case 137:
            SetQWLE( &(*pp_buffer)[20], p_input->p_fmt->audio.i_rate );
            SetQWLE( &(*pp_buffer)[28], 1 );
        break;
        default:
            SetQWLE( &(*pp_buffer)[20], 1000 );
            SetQWLE( &(*pp_buffer)[28], 1 );
    }


    if ( p_input->p_fmt->p_extra )
        SetDWLE( &(*pp_buffer)[44],
                xiph_CountUnknownHeaders( p_input->p_fmt->p_extra,
                                          p_input->p_fmt->i_extra,
                                          p_input->p_fmt->i_codec ) );

    if ( headers.i_size > 0 )
    {
        psz_header = *pp_buffer + FISBONE_BASE_SIZE;
        memcpy( psz_header, headers.psz_content_type, strlen( headers.psz_content_type ) );
        psz_header += strlen( headers.psz_content_type );
        if ( headers.psz_role )
            memcpy( psz_header, headers.psz_role, strlen( headers.psz_role ) );
    }
    *pi_size = FISBONE_BASE_SIZE + headers.i_size;

    free( headers.psz_content_type );
    free( headers.psz_role );
}

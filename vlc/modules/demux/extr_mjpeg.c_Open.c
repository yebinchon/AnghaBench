
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_9__ {int force; } ;
struct TYPE_10__ {int pf_control; int out; int pf_demux; int s; TYPE_3__* p_sys; TYPE_1__ obj; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_11__ {int i_frame_size_estimate; int* p_peek; int b_still; int * p_es; int fmt; void* i_frame_length; void* i_still_end; scalar_t__ i_level; int * psz_separator; int i_time; } ;
typedef TYPE_3__ demux_sys_t ;


 int CheckMimeHeader (TYPE_2__*,int*) ;
 int Control ;
 scalar_t__ IsMxpeg (int ) ;
 int MimeDemux ;
 int MjpgDemux ;
 int VIDEO_ES ;
 int VLC_CODEC_MJPG ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_TICK_0 ;
 void* VLC_TICK_INVALID ;
 scalar_t__ demux_IsPathExtension (TYPE_2__*,char*) ;
 int es_format_Init (int *,int ,int ) ;
 int * es_out_Add (int ,int *) ;
 int free (char*) ;
 int msg_Dbg (TYPE_2__*,char*) ;
 char* stream_ContentType (int ) ;
 size_t strlen (char*) ;
 char* strstr (char*,char*) ;
 scalar_t__ unlikely (int ) ;
 float var_InheritFloat (TYPE_2__*,char*) ;
 TYPE_3__* vlc_obj_malloc (int *,int) ;
 int * vlc_obj_strdup (int *,char*) ;
 int vlc_stream_Read (int ,int *,int) ;
 void* vlc_tick_rate_duration (float) ;

__attribute__((used)) static int Open( vlc_object_t * p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    int i_size;
    bool b_matched = 0;

    if( IsMxpeg( p_demux->s ) && !p_demux->obj.force )

        return VLC_EGENERIC;

    demux_sys_t *p_sys = vlc_obj_malloc( p_this, sizeof (*p_sys) );
    if( unlikely(p_sys == ((void*)0)) )
        return VLC_ENOMEM;

    p_demux->p_sys = p_sys;
    p_sys->p_es = ((void*)0);
    p_sys->i_time = VLC_TICK_0;
    p_sys->i_level = 0;

    p_sys->psz_separator = ((void*)0);
    p_sys->i_frame_size_estimate = 15 * 1024;

    char *content_type = stream_ContentType( p_demux->s );
    if ( content_type )
    {

        char* boundary = strstr( content_type, "boundary=" );
        if( boundary )
        {
            boundary += strlen( "boundary=" );
            size_t len = strlen( boundary );
            if( len > 2 && boundary[0] == '"'
                && boundary[len-1] == '"' )
            {
                boundary[len-1] = '\0';
                boundary++;
            }
            p_sys->psz_separator = vlc_obj_strdup( p_this, boundary );
            if( !p_sys->psz_separator )
            {
                free( content_type );
                return VLC_ENOMEM;
            }
        }
        free( content_type );
    }

    b_matched = CheckMimeHeader( p_demux, &i_size);
    if( b_matched )
    {
        p_demux->pf_demux = MimeDemux;
        if( vlc_stream_Read( p_demux->s, ((void*)0), i_size ) < i_size )
            return VLC_EGENERIC;
    }
    else if( i_size == 0 )
    {

        if( p_sys->p_peek[0] == 0xFF && p_sys->p_peek[1] == 0xD8 )
        {
            msg_Dbg( p_demux, "JPEG SOI marker detected" );
            p_demux->pf_demux = MjpgDemux;
            p_sys->i_level++;
        }
        else
        {
            return VLC_EGENERIC;
        }
    }
    else
    {
        return VLC_EGENERIC;
    }


    float f_fps = var_InheritFloat( p_demux, "mjpeg-fps" );

    p_sys->i_still_end = VLC_TICK_INVALID;
    if( demux_IsPathExtension( p_demux, ".jpeg" ) ||
        demux_IsPathExtension( p_demux, ".jpg" ) )
    {

        p_sys->b_still = 1;
        if( f_fps == 0.f )

            f_fps = 1.f;
    }
    else
        p_sys->b_still = 0;
    p_sys->i_frame_length = f_fps ? vlc_tick_rate_duration(f_fps) : VLC_TICK_INVALID;

    es_format_Init( &p_sys->fmt, VIDEO_ES, VLC_CODEC_MJPG );

    p_sys->p_es = es_out_Add( p_demux->out, &p_sys->fmt );
    if( unlikely(p_sys->p_es == ((void*)0)) )
        return VLC_ENOMEM;

    p_demux->pf_control = Control;
    return VLC_SUCCESS;
}

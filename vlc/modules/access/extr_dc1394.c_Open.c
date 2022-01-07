
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_14__ {int i_width; int i_height; } ;
struct TYPE_15__ {TYPE_1__ video; int i_codec; } ;
typedef TYPE_2__ es_format_t ;
struct TYPE_16__ {int * out; int psz_location; TYPE_4__* p_sys; int pf_control; int pf_demux; } ;
typedef TYPE_3__ demux_t ;
struct TYPE_17__ {int width; int height; int brightness; int focus; int selected_camera; int dma_buffers; int * camera; int p_es_video; int video_mode; int frame_rate; scalar_t__ video_device; int features; scalar_t__ reset_bus; int * p_dccontext; } ;
typedef TYPE_4__ demux_sys_t ;
typedef scalar_t__ dc1394error_t ;


 int Close (int *) ;
 int Control ;
 int DC1394_CAPTURE_FLAGS_DEFAULT ;
 int DC1394_FEATURE_FOCUS ;
 int DC1394_FRAMERATE_15 ;
 int DC1394_ISO_SPEED_400 ;
 scalar_t__ DC1394_NO_BANDWIDTH ;
 int DC1394_ON ;
 scalar_t__ DC1394_SUCCESS ;
 int DC1394_VIDEO_MODE_640x480_YUV422 ;
 int Demux ;
 scalar_t__ FindCamera (TYPE_4__*,TYPE_3__*) ;
 int VIDEO_ES ;
 int VLC_CODEC_UYVY ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 scalar_t__ VLC_SUCCESS ;
 scalar_t__ dc1394_camera_print_info (int *,int ) ;
 scalar_t__ dc1394_camera_reset (int *) ;
 scalar_t__ dc1394_capture_set_device_filename (int *,scalar_t__) ;
 scalar_t__ dc1394_capture_setup (int *,int,int ) ;
 int dc1394_capture_stop (int *) ;
 scalar_t__ dc1394_feature_get_all (int *,int *) ;
 int dc1394_feature_print_all (int *,int ) ;
 scalar_t__ dc1394_feature_set_value (int *,int ,int) ;
 int dc1394_free (int *) ;
 int * dc1394_new () ;
 scalar_t__ dc1394_reset_bus (int *) ;
 scalar_t__ dc1394_video_set_framerate (int *,int ) ;
 scalar_t__ dc1394_video_set_iso_speed (int *,int ) ;
 scalar_t__ dc1394_video_set_mode (int *,int ) ;
 scalar_t__ dc1394_video_set_transmission (int *,int ) ;
 int es_format_Init (TYPE_2__*,int ,int ) ;
 int es_out_Add (int *,TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 int msg_Dbg (TYPE_3__*,char*,...) ;
 int msg_Err (TYPE_3__*,char*,...) ;
 scalar_t__ process_options (TYPE_3__*) ;
 int stderr ;
 TYPE_4__* vlc_obj_calloc (int *,int,int) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys;
    es_format_t fmt;
    dc1394error_t res;

    if (p_demux->out == ((void*)0))
        return VLC_EGENERIC;


    p_demux->pf_demux = Demux;
    p_demux->pf_control = Control;

    p_demux->p_sys = p_sys = vlc_obj_calloc( p_this, 1, sizeof( demux_sys_t ) );
    if( !p_sys )
        return VLC_ENOMEM;

    memset( &fmt, 0, sizeof( es_format_t ) );


    p_sys->video_mode = DC1394_VIDEO_MODE_640x480_YUV422;
    p_sys->width = 640;
    p_sys->height = 480;
    p_sys->frame_rate = DC1394_FRAMERATE_15;
    p_sys->brightness = 200;
    p_sys->focus = 0;
    p_sys->p_dccontext = ((void*)0);
    p_sys->camera = ((void*)0);
    p_sys->selected_camera = -1;
    p_sys->dma_buffers = 1;
    p_sys->reset_bus = 0;


    if( process_options(p_demux) != VLC_SUCCESS )
    {
        msg_Err( p_demux, "Bad MRL, please check the option line "
                          "(MRL was: %s)",
                          p_demux->psz_location );
        return VLC_EGENERIC;
    }

    p_sys->p_dccontext = dc1394_new();
    if( !p_sys->p_dccontext )
    {
        msg_Err( p_demux, "Failed to initialise libdc1394");
        return VLC_EGENERIC;
    }

    if( FindCamera( p_sys, p_demux ) != VLC_SUCCESS )
    {
        dc1394_free( p_sys->p_dccontext );
        return VLC_EGENERIC;
    }

    if( !p_sys->camera )
    {
        msg_Err( p_demux, "No camera found !!" );
        dc1394_free( p_sys->p_dccontext );
        return VLC_EGENERIC;
    }

    if( p_sys->reset_bus )
    {
        if( dc1394_reset_bus( p_sys->camera ) != DC1394_SUCCESS )
        {
            msg_Err( p_demux, "Unable to reset IEEE 1394 bus");
            Close( p_this );
            return VLC_EGENERIC;
        }
        else msg_Dbg( p_demux, "Successfully reset IEEE 1394 bus");
    }

    if( dc1394_camera_reset( p_sys->camera ) != DC1394_SUCCESS )
    {
        msg_Err( p_demux, "Unable to reset camera");
        Close( p_this );
        return VLC_EGENERIC;
    }

    if( dc1394_camera_print_info( p_sys->camera,
                  stderr ) != DC1394_SUCCESS )
    {
        msg_Err( p_demux, "Unable to print camera info");
        Close( p_this );
        return VLC_EGENERIC;
    }

    if( dc1394_feature_get_all( p_sys->camera,
                &p_sys->features ) != DC1394_SUCCESS )
    {
        msg_Err( p_demux, "Unable to get feature set");
        Close( p_this );
        return VLC_EGENERIC;
    }

    dc1394_feature_print_all(&p_sys->features, stderr);
    if( p_sys->focus )
    {
        if( dc1394_feature_set_value( p_sys->camera,
                      DC1394_FEATURE_FOCUS,
                      p_sys->focus ) != DC1394_SUCCESS )
        {
            msg_Err( p_demux, "Unable to set initial focus to %u",
                     p_sys->focus );
        }
        else
            msg_Dbg( p_demux, "Initial focus set to %u", p_sys->focus );
    }

    if( dc1394_feature_set_value( p_sys->camera,
                  DC1394_FEATURE_FOCUS,
                  p_sys->brightness ) != DC1394_SUCCESS )
    {
        msg_Err( p_demux, "Unable to set initial brightness to %u",
                 p_sys->brightness );
    }
    else
        msg_Dbg( p_demux, "Initial brightness set to %u", p_sys->brightness );

    if( dc1394_video_set_framerate( p_sys->camera,
                    p_sys->frame_rate ) != DC1394_SUCCESS )
    {
        msg_Err( p_demux, "Unable to set framerate");
        Close( p_this );
        return VLC_EGENERIC;
    }

    if( dc1394_video_set_mode( p_sys->camera,
                   p_sys->video_mode ) != DC1394_SUCCESS )
    {
        msg_Err( p_demux, "Unable to set video mode");
        Close( p_this );
        return VLC_EGENERIC;
    }

    if( dc1394_video_set_iso_speed( p_sys->camera,
                    DC1394_ISO_SPEED_400 ) != DC1394_SUCCESS )
    {
        msg_Err( p_demux, "Unable to set iso speed");
        Close( p_this );
        return VLC_EGENERIC;
    }


    res = dc1394_capture_setup( p_sys->camera,
                    p_sys->dma_buffers,
                DC1394_CAPTURE_FLAGS_DEFAULT);
    if( res != DC1394_SUCCESS )
    {
        if( res == DC1394_NO_BANDWIDTH )
        {
            msg_Err( p_demux ,"No bandwidth: try adding the "
             "\"resetbus\" option" );
        }
        else
        {
            msg_Err( p_demux ,"Unable to setup capture" );
        }
        Close( p_this );
        return VLC_EGENERIC;
    }




    es_format_Init( &fmt, VIDEO_ES, VLC_CODEC_UYVY );

    fmt.video.i_width = p_sys->width;
    fmt.video.i_height = p_sys->height;

    msg_Dbg( p_demux, "Added new video es %4.4s %dx%d",
             (char*)&fmt.i_codec, fmt.video.i_width, fmt.video.i_height );

    p_sys->p_es_video = es_out_Add( p_demux->out, &fmt );


    if( dc1394_video_set_transmission( p_sys->camera,
                       DC1394_ON ) != DC1394_SUCCESS )
    {
        msg_Err( p_demux, "Unable to start camera iso transmission" );
        dc1394_capture_stop( p_sys->camera );
        Close( p_this );
        return VLC_EGENERIC;
    }
    msg_Dbg( p_demux, "Set iso transmission" );

    return VLC_SUCCESS;
}

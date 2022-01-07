
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_5__ {int video_device; int p_dccontext; int camera; } ;
typedef TYPE_2__ demux_sys_t ;


 int DC1394_OFF ;
 scalar_t__ DC1394_SUCCESS ;
 int dc1394_camera_free (int ) ;
 int dc1394_capture_stop (int ) ;
 int dc1394_free (int ) ;
 scalar_t__ dc1394_video_set_transmission (int ,int ) ;
 int free (int ) ;
 int msg_Err (TYPE_1__*,char*) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys = p_demux->p_sys;


    if( dc1394_video_set_transmission( p_sys->camera,
                       DC1394_OFF ) != DC1394_SUCCESS )
        msg_Err( p_demux, "Unable to stop camera iso transmission" );


    dc1394_capture_stop( p_sys->camera );

    dc1394_camera_free(p_sys->camera);
    dc1394_free(p_sys->p_dccontext);

    free( p_sys->video_device );
}

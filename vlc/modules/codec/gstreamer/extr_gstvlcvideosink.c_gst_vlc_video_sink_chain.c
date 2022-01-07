
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GstFlowReturn ;
typedef int GstBuffer ;
typedef int GstBaseSink ;


 int GST_FLOW_OK ;
 size_t SIGNAL_NEW_BUFFER ;
 int g_signal_emit (int *,int ,int ,int *) ;
 int * gst_vlc_video_sink_signals ;

__attribute__((used)) static GstFlowReturn gst_vlc_video_sink_chain( GstBaseSink *p_bsink,
        GstBuffer *p_buffer )
{
    g_signal_emit( p_bsink,
        gst_vlc_video_sink_signals[ SIGNAL_NEW_BUFFER ], 0, p_buffer );

    return GST_FLOW_OK;
}

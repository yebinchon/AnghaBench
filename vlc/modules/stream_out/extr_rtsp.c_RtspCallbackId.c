
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stream; } ;
typedef TYPE_1__ rtsp_stream_id_t ;
typedef int httpd_message_t ;
typedef int httpd_client_t ;
typedef int httpd_callback_sys_t ;


 int RtspHandler (int ,TYPE_1__*,int *,int *,int const*) ;

__attribute__((used)) static int RtspCallbackId( httpd_callback_sys_t *p_args,
                           httpd_client_t *cl,
                           httpd_message_t *answer,
                           const httpd_message_t *query )
{
    rtsp_stream_id_t *id = (rtsp_stream_id_t *)p_args;
    return RtspHandler( id->stream, id, cl, answer, query );
}

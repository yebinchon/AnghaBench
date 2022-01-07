
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtsp_stream_t ;
typedef int httpd_message_t ;
typedef int httpd_client_t ;
typedef int httpd_callback_sys_t ;


 int RtspHandler (int *,int *,int *,int *,int const*) ;

__attribute__((used)) static int RtspCallback( httpd_callback_sys_t *p_args,
                         httpd_client_t *cl,
                         httpd_message_t *answer,
                         const httpd_message_t *query )
{
    return RtspHandler( (rtsp_stream_t *)p_args, ((void*)0), cl, answer, query );
}

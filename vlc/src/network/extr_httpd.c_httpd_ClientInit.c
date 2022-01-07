
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_3__ {int i_keyframe_wait_to_pass; int b_stream_mode; int answer; int query; int i_buffer_size; int p_buffer; scalar_t__ i_buffer; int i_activity_timeout; int i_activity_date; int i_state; } ;
typedef TYPE_1__ httpd_client_t ;


 int HTTPD_CLIENT_RECEIVING ;
 int HTTPD_CL_BUFSIZE ;
 int VLC_TICK_FROM_SEC (int) ;
 int httpd_MsgInit (int *) ;
 int xmalloc (int ) ;

__attribute__((used)) static void httpd_ClientInit(httpd_client_t *cl, vlc_tick_t now)
{
    cl->i_state = HTTPD_CLIENT_RECEIVING;
    cl->i_activity_date = now;
    cl->i_activity_timeout = VLC_TICK_FROM_SEC(10);
    cl->i_buffer_size = HTTPD_CL_BUFSIZE;
    cl->i_buffer = 0;
    cl->p_buffer = xmalloc(cl->i_buffer_size);
    cl->i_keyframe_wait_to_pass = -1;
    cl->b_stream_mode = 0;

    httpd_MsgInit(&cl->query);
    httpd_MsgInit(&cl->answer);
}

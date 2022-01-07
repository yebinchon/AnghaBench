
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_h2_conn {int dummy; } ;


 int vlc_h2_conn_queue (struct vlc_h2_conn*,int ) ;
 int vlc_h2_frame_settings_ack () ;

__attribute__((used)) static int vlc_h2_settings_done(void *ctx)
{
    struct vlc_h2_conn *conn = ctx;

    return vlc_h2_conn_queue(conn, vlc_h2_frame_settings_ack());
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_fast64_t ;
struct vlc_h2_conn {int dummy; } ;


 int vlc_h2_conn_queue_prio (struct vlc_h2_conn*,int ) ;
 int vlc_h2_frame_pong (int ) ;

__attribute__((used)) static int vlc_h2_ping(void *ctx, uint_fast64_t opaque)
{
    struct vlc_h2_conn *conn = ctx;

    return vlc_h2_conn_queue_prio(conn, vlc_h2_frame_pong(opaque));
}

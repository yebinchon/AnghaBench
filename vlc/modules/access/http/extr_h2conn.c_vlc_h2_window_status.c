
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vlc_h2_conn {int dummy; } ;


 scalar_t__ vlc_h2_conn_queue_prio (struct vlc_h2_conn*,int ) ;
 int vlc_h2_frame_window_update (int ,int) ;

__attribute__((used)) static void vlc_h2_window_status(void *ctx, uint32_t *restrict rcwd)
{
    struct vlc_h2_conn *conn = ctx;



    if (*rcwd < (1 << 30)
     && vlc_h2_conn_queue_prio(conn,
                               vlc_h2_frame_window_update(0, 1 << 30)) == 0)
        *rcwd += 1 << 30;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_h2_frame {int dummy; } ;
struct vlc_h2_conn {int out; int opaque; } ;


 int vlc_h2_frame_dump (int ,struct vlc_h2_frame*,char*) ;
 int vlc_h2_output_send_prio (int ,struct vlc_h2_frame*) ;

__attribute__((used)) static int vlc_h2_conn_queue_prio(struct vlc_h2_conn *conn,
                                  struct vlc_h2_frame *f)
{
    vlc_h2_frame_dump(conn->opaque, f, "out (priority)");
    return vlc_h2_output_send_prio(conn->out, f);
}

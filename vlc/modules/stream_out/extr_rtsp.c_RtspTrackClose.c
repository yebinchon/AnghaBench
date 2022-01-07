
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int setup_fd; int rtp_fd; int sout_id; } ;
typedef TYPE_1__ rtsp_strack_t ;


 int net_Close (int) ;
 int rtp_del_sink (int ,int) ;

__attribute__((used)) static void RtspTrackClose( rtsp_strack_t *tr )
{
    if (tr->setup_fd != -1)
    {
        if (tr->rtp_fd != -1)
        {
            rtp_del_sink(tr->sout_id, tr->rtp_fd);
            tr->rtp_fd = -1;
        }
        net_Close(tr->setup_fd);
        tr->setup_fd = -1;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_h2_stream {size_t recv_cwnd; int recv_wait; struct vlc_h2_frame** recv_tailp; int id; int conn; scalar_t__ recv_end; } ;
struct vlc_h2_frame {struct vlc_h2_frame* next; } ;


 int VLC_H2_FLOW_CONTROL_ERROR ;
 int VLC_H2_STREAM_CLOSED ;
 int free (struct vlc_h2_frame*) ;
 int vlc_cond_signal (int *) ;
 int vlc_h2_frame_data_get (struct vlc_h2_frame*,size_t*) ;
 int vlc_h2_stream_error (int ,int ,int ) ;
 int vlc_h2_stream_fatal (struct vlc_h2_stream*,int ) ;

__attribute__((used)) static int vlc_h2_stream_data(void *ctx, struct vlc_h2_frame *f)
{
    struct vlc_h2_stream *s = ctx;
    size_t len;

    if (s->recv_end)
    {
        free(f);
        return vlc_h2_stream_error(s->conn, s->id, VLC_H2_STREAM_CLOSED);
    }


    vlc_h2_frame_data_get(f, &len);
    if (len > s->recv_cwnd)
    {
        free(f);
        return vlc_h2_stream_fatal(s, VLC_H2_FLOW_CONTROL_ERROR);
    }
    s->recv_cwnd -= len;

    *(s->recv_tailp) = f;
    s->recv_tailp = &f->next;
    vlc_cond_signal(&s->recv_wait);
    return 0;
}

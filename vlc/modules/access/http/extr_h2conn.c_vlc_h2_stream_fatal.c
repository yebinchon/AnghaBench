
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_fast32_t ;
struct vlc_h2_stream {int recv_end; int id; int conn; int recv_err; } ;


 int EPROTO ;
 int vlc_h2_stream_error (int ,int ,int ) ;

__attribute__((used)) static int vlc_h2_stream_fatal(struct vlc_h2_stream *s, uint_fast32_t code)
{
    s->recv_end = 1;
    s->recv_err = EPROTO;
    return vlc_h2_stream_error(s->conn, s->id, code);
}

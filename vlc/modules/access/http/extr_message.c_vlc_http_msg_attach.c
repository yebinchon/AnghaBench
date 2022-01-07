
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_stream {int dummy; } ;
struct vlc_http_msg {struct vlc_http_stream* payload; } ;


 int assert (int ) ;

void vlc_http_msg_attach(struct vlc_http_msg *m, struct vlc_http_stream *s)
{
    assert(m->payload == ((void*)0));
    m->payload = s;
}

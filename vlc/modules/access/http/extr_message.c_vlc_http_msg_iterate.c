
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_msg {int * payload; } ;


 int vlc_http_msg_destroy (struct vlc_http_msg*) ;
 struct vlc_http_msg* vlc_http_stream_read_headers (int *) ;

struct vlc_http_msg *vlc_http_msg_iterate(struct vlc_http_msg *m)
{
    struct vlc_http_msg *next = vlc_http_stream_read_headers(m->payload);

    m->payload = ((void*)0);
    vlc_http_msg_destroy(m);
    return next;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_msg {int * payload; } ;
typedef int block_t ;


 int * vlc_http_stream_read (int *) ;

block_t *vlc_http_msg_read(struct vlc_http_msg *m)
{
    if (m->payload == ((void*)0))
        return ((void*)0);

    return vlc_http_stream_read(m->payload);
}

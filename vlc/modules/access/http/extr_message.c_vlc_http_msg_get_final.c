
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_msg {int dummy; } ;


 int vlc_http_msg_get_status (struct vlc_http_msg*) ;
 struct vlc_http_msg* vlc_http_msg_iterate (struct vlc_http_msg*) ;

struct vlc_http_msg *vlc_http_msg_get_final(struct vlc_http_msg *m)
{
    while (m != ((void*)0) && (vlc_http_msg_get_status(m) / 100) == 1)
        m = vlc_http_msg_iterate(m);
    return m;
}

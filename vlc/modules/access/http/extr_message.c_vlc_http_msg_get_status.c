
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_msg {int status; } ;



int vlc_http_msg_get_status(const struct vlc_http_msg *m)
{
    return m->status;
}

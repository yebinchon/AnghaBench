
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_msg {char const* method; } ;



const char *vlc_http_msg_get_method(const struct vlc_http_msg *m)
{
    return m->method;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct vlc_http_msg {int dummy; } ;


 int vlc_http_msg_get_time (struct vlc_http_msg const*,char*) ;

time_t vlc_http_msg_get_mtime(const struct vlc_http_msg *m)
{
    return vlc_http_msg_get_time(m, "Last-Modified");
}

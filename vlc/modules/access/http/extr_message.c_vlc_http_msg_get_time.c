
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct vlc_http_msg {int dummy; } ;


 int vlc_http_mktime (char const*) ;
 char* vlc_http_msg_get_header (struct vlc_http_msg const*,char const*) ;

time_t vlc_http_msg_get_time(const struct vlc_http_msg *m, const char *name)
{
    const char *str = vlc_http_msg_get_header(m, name);
    if (str == ((void*)0))
        return -1;
    return vlc_http_mktime(str);
}

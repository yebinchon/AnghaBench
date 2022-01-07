
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_msg {scalar_t__ status; } ;


 scalar_t__ vlc_http_is_agent (char const*) ;
 char* vlc_http_msg_get_header (struct vlc_http_msg const*,char const*) ;

const char *vlc_http_msg_get_agent(const struct vlc_http_msg *m)
{
    const char *hname = (m->status < 0) ? "User-Agent" : "Server";
    const char *str = vlc_http_msg_get_header(m, hname);

    return (str != ((void*)0) && vlc_http_is_agent(str)) ? str : ((void*)0);
}

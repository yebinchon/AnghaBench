
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_msg {scalar_t__ status; } ;


 int EINVAL ;
 int errno ;
 int vlc_http_is_agent (char const*) ;
 int vlc_http_msg_add_header (struct vlc_http_msg*,char const*,char*,char const*) ;

int vlc_http_msg_add_agent(struct vlc_http_msg *m, const char *str)
{
    const char *hname = (m->status < 0) ? "User-Agent" : "Server";

    if (!vlc_http_is_agent(str))
    {
        errno = EINVAL;
        return -1;
    }
    return vlc_http_msg_add_header(m, hname, "%s", str);
}

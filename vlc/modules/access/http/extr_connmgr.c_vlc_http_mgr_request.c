
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_msg {int dummy; } ;
struct vlc_http_mgr {int dummy; } ;


 struct vlc_http_msg* stub1 (struct vlc_http_mgr*,char const*,unsigned int,struct vlc_http_msg const*) ;
 scalar_t__ vlc_http_port_blocked (unsigned int) ;
 struct vlc_http_msg* vlc_http_request (struct vlc_http_mgr*,char const*,unsigned int,struct vlc_http_msg const*) ;
 struct vlc_http_msg* vlc_https_request (struct vlc_http_mgr*,char const*,unsigned int,struct vlc_http_msg const*) ;

struct vlc_http_msg *vlc_http_mgr_request(struct vlc_http_mgr *mgr, bool https,
                                          const char *host, unsigned port,
                                          const struct vlc_http_msg *m)
{
    if (port && vlc_http_port_blocked(port))
        return ((void*)0);

    return (https ? vlc_https_request : vlc_http_request)(mgr, host, port, m);
}

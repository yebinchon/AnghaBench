
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_tls_t ;
struct TYPE_2__ {int sock; } ;
typedef TYPE_1__ vlc_tls_proxy_t ;


 int vlc_tls_GetPollFD (int ,short*) ;

__attribute__((used)) static int vlc_tls_ProxyGetFD(vlc_tls_t *tls, short *restrict events)
{
    vlc_tls_proxy_t *proxy = (vlc_tls_proxy_t *)tls;

    return vlc_tls_GetPollFD(proxy->sock, events);
}
